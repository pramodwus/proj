package com.ineo.trust.controller;

import java.util.Base64;
import java.util.HashSet;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Role;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;

@RestController
public class AdminController {
	private static final Logger logger = LogManager.getLogger(AuthenticationController.class);
	@Autowired
	AdminService adminService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView addUser(
			@RequestParam("sirName") String sirname,
			@RequestParam("firstname") String firstname,
			@RequestParam("middlename") String middlename,
			@RequestParam("lastname") String lastname,
			@RequestParam("age") Integer age,
			@RequestParam("emailId") String email,
			@RequestParam("password") String password,
		 	@RequestParam("gender") String gender,
			@RequestParam("contactNumber") String contactNumber,
			@RequestParam("role") String rolename
			){
		logger.debug("Inside Admincontroller adduser method:::::::");
		ModelAndView model= new ModelAndView();
		model.setViewName("adduser");
		Set<Role> set=new HashSet<>();
		User user=new User();
		user.setSirName(sirname);
		user.setFirstName(firstname);
		user.setMiddleName(middlename);
		user.setLastName(lastname);
		user.setEmail(email);
		user.setAge(age);
	    user.setGender(gender);
	    user.setContactNumber("(+91)"+contactNumber);
	    Base64.Encoder encoder = Base64.getEncoder();  
	    String encodepassword = encoder.encodeToString(password.getBytes());  
        user.setEnocodepassword(encodepassword); 
		user.setPassword(bCryptPasswordEncoder.encode(password));
		Role role=new Role();
		role.setRole(rolename);
		set.add(role);
		user.setRoles(set);
		user=adminService.saveUserData(user);
		if(user!= null)
		     model.addObject("msg","sucess");
		 else
		 	model.addObject("msg","error");	
        return model;
	}
	@RequestMapping(value="/editUser",method = RequestMethod.POST)
	public ModelAndView editUser(
			@RequestParam("sirName") String sirname,
			@RequestParam("firstname") String firstname,
			@RequestParam("middlename") String middlename,
			@RequestParam("lastname") String lastname,
			@RequestParam("age") Integer age,
			@RequestParam("emailId") String email,
			@RequestParam("password") String password,
		 	@RequestParam("gender") String gender,
			@RequestParam("contactNumber") String contactNumber,
			@RequestParam("role") String rolename,
			@RequestParam("roleid") Integer roleId
			){
		logger.debug("Inside Admincontroller edituser method:::::::");
		ModelAndView model= new ModelAndView();
		model.setViewName("edituser");
		Set<Role> set=new HashSet<>();
		User user=new User();
		user.setSirName(sirname);
		user.setFirstName(firstname);
		user.setMiddleName(middlename);
		user.setLastName(lastname);
		user.setEmail(email);
		user.setAge(age);
	    user.setGender(gender);
	    user.setContactNumber("(+91)"+contactNumber);
	    Base64.Encoder encoder = Base64.getEncoder();  
	    String encodepassword = encoder.encodeToString(password.getBytes());  
        user.setEnocodepassword(encodepassword); 
		user.setPassword(bCryptPasswordEncoder.encode(password));
		Role role=new Role();
		role.setId(roleId);
		role.setRole(rolename);
		set.add(role);
		user.setRoles(set);
		//System.out.println(user.getSirName()+"="+user.getFirstName()+""+user.getMiddleName()+""+user.getLastName()+""+user.getLastName()+"="+user.getAge()+"="+user.getEmail()+"="+user.getGender()+"="+user.getContactNumber()+"="+user.getPassword()+"="+user.getRoles());
		user=adminService.updateUser(user);
		if(user!= null)
		     model.addObject("msg1","sucess");
		 	else
		model.addObject("msg1","error");	
        return model;
	}
	
	@RequestMapping(value="adduser")
	public ModelAndView adduser(
			){
		logger.debug("Inside Admincontroller adduser method:::::::");
		ModelAndView model= new ModelAndView();
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.setViewName("adduser");
		 return model;
	}
	@RequestMapping(value="edituserpage",method = RequestMethod.POST)
	public ModelAndView edituser(@RequestParam("email") String email
			){
		logger.debug("Inside Admincontroller edituser method:::::::");
		ModelAndView model= new ModelAndView();
		User user=adminService.getUserDetails(email);
	    Base64.Decoder decoder = Base64.getDecoder();  
	    String decodepassword = new String(decoder.decode(user.getEnocodepassword()));  
	    user.setEnocodepassword(decodepassword);
	    user.setContactNumber(user.getContactNumber().substring(5,user.getContactNumber().length()));
		model.addObject("user",user);
		model.setViewName("edituser");
		 return model;
	}

	@RequestMapping(value="deleteuser",method = RequestMethod.POST)
	public String edituser(@RequestParam("id") int id	){
		logger.debug("Inside Admincontroller deleteuser method:::::::");
		adminService.deleteUser(id);
		return "sucess";
	}

}
