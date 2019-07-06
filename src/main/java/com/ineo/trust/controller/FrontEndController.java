package com.ineo.trust.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Doctor;
import com.ineo.trust.model.LabDetails;
import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Receipt;
import com.ineo.trust.model.ReceiptTestdetails;
import com.ineo.trust.model.Role;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.DoctorService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.ReceiptService;
import com.ineo.trust.service.TestDetailsService;

@Controller
public class FrontEndController {
	
	private static final Logger logger = LogManager.getLogger(FrontEndController.class);


	
	@Autowired 
	private AdminService adminService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private ReceiptService receiptService;
	
	  @Autowired 
	    private TestDetailsService testDetailsService;
	    
	    @Autowired 
	    private DoctorService doctorService;
	    
	    @Autowired 
	    private HttpServletRequest httpServletRequest;



	
	@RequestMapping(value = "/frontdesk")
	public ModelAndView getFrontDesk() {
		logger.debug("Inside FrontEndController getFrontDesk method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName()); 
		 Iterable<Patient>  listIterable=patientService.getAllPatient();
		 ModelAndView model=new ModelAndView();
		 HttpSession session=httpServletRequest.getSession();
			String role=(String)session.getAttribute("role");
			model.addObject("roles",role);
		model.addObject("user",user);
		model.addObject("listPatient",listIterable);
		
		model.setViewName("frontdesk");
		return model;
	}
	



	
	
	@RequestMapping(value = "/receipt")
	public ModelAndView getReceipt() {
		logger.debug("Inside FrontEndController getReceipt method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		List<ReceiptTestdetails> receipt=receiptService.getAllReceipt();
		ModelAndView model=new ModelAndView();
		HttpSession session=httpServletRequest.getSession(); String
		role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		model.addObject("receipt",receipt);
		model.addObject("user",user);
		model.setViewName("receipt");
		return model;
	}
	
	@RequestMapping(value = "/doctor")
	public ModelAndView getDocter() {
		logger.debug("Inside FrontEndController getdoctor method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("doctor");
		return model;
	}
	
	
	@RequestMapping(value = "/test")
	public ModelAndView getTest() {
		logger.debug("Inside FrontEndController gettest method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("test");
		return model;
	}
	
	
	@RequestMapping(value = "/user")
	public ModelAndView getUser() {
		logger.debug("Inside FrontEndController getuser method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("user");
		return model;
	}
	
	@RequestMapping(value = "/cashreport")
	public ModelAndView getCashReport() {
		logger.debug("Inside FrontEndController cashreport method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("dailycashreport");
		return model;
	}
	
	@RequestMapping(value = "/summarydocter")
	public ModelAndView getSummaryDocter() {
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("summarydoctor");
		return model;
	}
	@RequestMapping(value = "/summaryhospital")
	public ModelAndView getSummaryHospital() {
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("summaryhospital");
		return model;
	}
	
	/*
	 * @RequestMapping(value = "/reporttemplate") public ModelAndView
	 * getReportTemplate() { Authentication auth
	 * =SecurityContextHolder.getContext().getAuthentication(); User
	 * user=adminService.getUserDetails(auth.getName()); ModelAndView model=new
	 * ModelAndView(); model.addObject("user",user);
	 * model.setViewName("reporttemplate"); return model; }
	 */
	@RequestMapping(value = "/maintenance")
	public ModelAndView getMaintenance() {
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		model.addObject("user",user);
		model.setViewName("maintenance");
		return model;
	}
	
	@RequestMapping(value = "/labassistant")
	public ModelAndView getLabAssistance() {
		logger.debug("Inside FrontEndController getlabassistant method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		List<ReceiptTestdetails> receipt=receiptService.getAllReceipt();
		model.addObject("receipt",receipt);
		model.addObject("rolename",role);
		model.addObject("user",user);
		model.setViewName("labassistant");
		return model;
	}





	
	
	
	/*
	 * @RequestMapping(value = "/newreceipt",method = RequestMethod.POST) public
	 * ModelAndView newreceipt(@RequestParam("id") Integer id) {
	 * 
	 * ModelAndView model=new ModelAndView(); Patient
	 * patient=patientService.findPatient(id); model.addObject("patient",patient);
	 * model.setViewName("newreceipt"); return model; }
	 */
	
}



