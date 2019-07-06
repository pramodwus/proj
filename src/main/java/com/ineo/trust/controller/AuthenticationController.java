package com.ineo.trust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Doctor;
import com.ineo.trust.model.LabDetails;
import com.ineo.trust.model.Patient;
import com.ineo.trust.model.ReceiptTestdetails;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.DoctorService;
import com.ineo.trust.service.OTPModalService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.ReceiptService;
import com.ineo.trust.service.TestDetailsService;

@Controller
public class AuthenticationController {
	private static final Logger logger = LogManager.getLogger(AuthenticationController.class);

	  @Autowired private HttpServletRequest httpServletRequest;


	
	@Autowired private AdminService adminService;
	@Autowired private PatientService patientService;
    @Autowired private OTPModalService otpModalService;
    @Autowired private TestDetailsService testDetailsService;
    @Autowired private DoctorService doctorService;
    @Autowired
	private ReceiptService receiptService;
    @RequestMapping(value={"/"}, method = RequestMethod.GET)
	    public ModelAndView index(){
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.setViewName("login");
	        return modelAndView;
	    }
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login"); // resources/template/login.html
		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView();
		// User user = new User();
		// modelAndView.addObject("user", user); 
		modelAndView.setViewName("register"); // resources/template/register.html
		return modelAndView;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() 
	{
		logger.debug("Inside AuthenticationController home method:::::::");
		ModelAndView modelAndView =new ModelAndView(); 
		Authentication auth =SecurityContextHolder.getContext().getAuthentication(); 
		 System.out.println("hiii");
		String rolePage  =adminService.findUserByEmail(auth.getName());
		HttpSession session=httpServletRequest.getSession();
		session.setAttribute("role",rolePage);
		System.out.println("role page"+rolePage);
		User user=adminService.getUserDetails(auth.getName());
		Iterable<Patient>  listIterable=patientService.getAllPatient();
		List<LabDetails> testdetails=testDetailsService.getAllTestData();
		List<ReceiptTestdetails> receipt=receiptService.getAllReceipt();
		testdetails.forEach(m->{System.out.println(m.getTestDetail().getTestCategory());});
		List<Doctor> doctor=doctorService.getDoctors();
		List<User> list=adminService.getAllUsers();
		modelAndView.addObject("list",list);
		modelAndView.addObject("doctor",doctor);

		modelAndView.addObject("receipt",receipt);
		modelAndView.addObject("testdetails",testdetails);
		modelAndView.addObject("listPatient",listIterable);
		modelAndView.addObject("user",user);
		modelAndView.addObject("rolename",rolePage);
	 	modelAndView.setViewName(rolePage);
		return modelAndView;
	}









	
	@RequestMapping(value="/signout")
	public ModelAndView logout()
	     {
		logger.debug("Inside AuthenticationController logout method:::::::");
		 ModelAndView modelAndView = new ModelAndView(); 
		 modelAndView.setViewName("login"); 
		 return modelAndView;
		 }
	
	
	
	/*
	 * @RequestMapping(value="/admin/home", method = RequestMethod.GET) public
	 * ModelAndView home() { System.out.println("hiii"); ModelAndView modelAndView
	 * =new ModelAndView(); Authentication auth
	 * =SecurityContextHolder.getContext().getAuthentication(); String rolePage
	 * =userService.findUserByEmail(auth.getName());
	 * modelAndView.setViewName(rolePage); return modelAndView; }
	 */
	@RequestMapping(value="/forgotpass")
	public ModelAndView forgotPassword(@Valid User user) {
		Boolean otp = null;
		 ModelAndView modelAndView = new ModelAndView(); 
		 modelAndView.setViewName("forgotpassword"); 
	
			otp = adminService.getOTP(user.getEmail());
		modelAndView.addObject("msg",otp);
		modelAndView.addObject("email",user.getEmail());
		return modelAndView;
	}
	
	
	
	
	@RequestMapping(value="/forgotpassword")
	public ModelAndView forgotPass()
	     {
		 ModelAndView modelAndView = new ModelAndView(); 
		 modelAndView.setViewName("forgotpassword"); 
		 return modelAndView;
		 }
	
	@RequestMapping(value="/checkotp", method = RequestMethod.POST )
	@ResponseBody
	public Boolean checkotp(@RequestParam("email") String email,@RequestParam("otp") String otp)
	     {
		Boolean check=otpModalService.checkOtp(email,otp);
		 return check;
		 }
	@RequestMapping(value="/changepass", method = RequestMethod.POST)
	public ModelAndView checkotp(@RequestParam("email") String email) 
	     {
		System.out.println("hello");
		ModelAndView model=new ModelAndView();
		model.addObject("email",email);
		model.setViewName("changepass");
		 return model;
		 }
	@RequestMapping(value="/newpass")
	public ModelAndView newpass(@RequestParam("password") String password,@RequestParam("email") String email) 
	     {
		System.out.println("hello");
		ModelAndView model=new ModelAndView();
		adminService.savepass(password,email);
		model.setViewName("login");
		 return model;
		 }
}
