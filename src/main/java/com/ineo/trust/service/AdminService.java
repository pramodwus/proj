package com.ineo.trust.service;

import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ineo.trust.common.CommonUtil;
import com.ineo.trust.controller.PatientController;
import com.ineo.trust.model.OTPModel;
import com.ineo.trust.model.Role;
import com.ineo.trust.model.User;
import com.ineo.trust.repository.AdminRepository;
import com.ineo.trust.repository.OTPModelRepository;

@Service
public class AdminService {
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	@Autowired JavaMailSender sender;
	@Autowired OTPModelRepository otpModelRepository;
	@Autowired
    private AdminRepository adminRepository;
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    
	public String findUserByEmail(String email) {
		logger.debug("Inside AdminService finduserbyemail method:::::::");
		User user = adminRepository.findByEmail(email);
		if (user == null)
			return CommonUtil.LOGIN;
		String role = user.getRoles().stream().filter(m -> m.getRole() != null).map(m -> m.getRole()).findFirst()
				.orElse(null);
		System.out.println("role name"+role);
		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.ADMIN)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.ADMIN;
		}
		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.BACKOFFICE)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.BACKOFFICE;
		}

		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.LABASSISTANT)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.LABASSISTANT;
		}
		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.FRONTDESKLABASSISTANT)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.FRONTDESKLABASSISTANT;
		}
		
		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.FRONTDESKSONOGRAPHY)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.FRONTDESKSONOGRAPHY;
		}
		if (user != null && role != null && role.equalsIgnoreCase(CommonUtil.FRONTDESKXRAY)) {
			user.setActive(1);
			adminRepository.save(user);
			return CommonUtil.FRONTDESKXRAY;
		}
		return CommonUtil.LOGIN;
	}






	/*
	 * public User saveUser(User user) {
	 * user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	 * user.setActive(1); Role userRole = roleRepository.findByRole("ADMIN");
	 * user.setRoles(new HashSet<Role>(Arrays.asList(userRole))); return
	 * userRepository.save(user); }
	 */
	 public User saveUserData(User user) { 
		 logger.debug("Inside AdminService saveuserdata method:::::::");
	  User	existuser= adminRepository.findByEmail(user.getEmail());
		 if(existuser == null)
		 {
		user= adminRepository.save(user);
		 return user;
		 }
		 else
		 {
			 return null;
		 }	
	 }

	 public User updateUser(User user) {
		 logger.debug("Inside AdminService updateuser method:::::::");
			// TODO Auto-generated method stub
			System.out.println("user====="+user);
			User existuser = adminRepository.findByEmail(user.getEmail());
			System.out.println("heloooooooooooo"+existuser);
			if (existuser == null)
				return existuser;
			else {
				user.setActive(1);
				user.setId(existuser.getId());
				return adminRepository.save(user);
			}
		}





	public User getEmaill(User user) {
		 logger.debug("Inside AdminService getemail method:::::::");
		// TODO Auto-generated method stub
		System.out.println("user====="+user);
		User existuser = adminRepository.findByEmail(user.getEmail());
		System.out.println("heloooooooooooo"+existuser);
		if (existuser == null)
			return existuser;
		else {
			user.setId(existuser.getId());
			return adminRepository.save(user);
		}
	}

	public Boolean getOTP(String email) {
		User user=adminRepository.findByEmail(email);
		if(user!=null) {
			OTPModel otpModel=otpModelRepository.findByEmailId(email);
			if(otpModel!=null) {
				String otp=sendOTP(email);
				otpModel.setEmailId(email);
				otpModel.setOtp(otp);
				otpModel.setUserId(user.getId());
				otpModel.setOtpId(otpModel.getOtpId());
				otpModelRepository.save(otpModel);
			}
			else
			{
				OTPModel otpModel1=new OTPModel();
				String otp=sendOTP(email);
				otpModel1.setOtp(otp);
				otpModel1.setEmailId(email);
				otpModel1.setUserId(user.getId());
				System.out.println("nice");
				otpModelRepository.save(otpModel1);
			}
			return true;
		}
		else
			return false;
	}

	public String sendOTP(String email) {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		String otps = new String();
		try {
			Integer otpi = 0;
			int i = 0;
			while (i == 0) {
				Double otp = Math.random();
				otpi = (int) (otp * 10000);
				otps = otpi.toString();
				if (otps.length() == 4)
					break;
			}
			helper.setTo(email);
			helper.setText("use " + otps + " for reset your password");
			helper.setSubject(otps);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		//sender.send(message);
		return otps;
	}
	

	public User  getUserDetails(String email)
	{
		User user=adminRepository.findByEmail(email);	
		if(user != null)
		{
       return user;
		}
		return null;
	}




	public void savepass(String password, String email) {
		// TODO Auto-generated method stub
		User user=adminRepository.findByEmail(email);
		user.setId(user.getId());
		user.setPassword(bCryptPasswordEncoder.encode(password));
		adminRepository.save(user);
	}




	public List<User> getAllUsers() {
		 logger.debug("Inside AdminService getallusers method:::::::");
		// TODO Auto-generated method stub
		List<User> list=adminRepository.findAll();
		return  list;
	}




	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		 logger.debug("Inside AdminService deleteuser method:::::::");
		Optional<User> user=adminRepository.findById((long) id);
		adminRepository.delete(user.get());
		System.out.println("deleted");
	}








	


	 
}


