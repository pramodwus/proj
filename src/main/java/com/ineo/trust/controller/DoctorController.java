package com.ineo.trust.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Doctor;
import com.ineo.trust.model.Role;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.DoctorService;

import javassist.NotFoundException;

@RestController
public class DoctorController {
	private static final Logger logger = LogManager.getLogger(AuthenticationController.class);
	@Autowired
	private DoctorService doctorService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/addoctor",method = RequestMethod.POST)
	public ModelAndView addDoctor(@Valid Doctor doctor){
		logger.debug("Inside DoctorController addDoctor method:::::::");
		ModelAndView model= new ModelAndView();
	    System.out.println(doctor.getSirName()+"="+doctor.getFirstName()+"="+doctor.getMiddleName()+"="+doctor.getLastName()+"="+doctor.getGender()+"="+doctor.getEmail()+"="+doctor.getAge()+"="+doctor.getAddress()+"="+doctor.getCity()+"="+doctor.getPincode()+"="+doctor.getQualification()+"="+doctor.getContactNumber());
	    doctor.setContactNumber("(+91)"+doctor.getContactNumber()); 
	    doctor=doctorService.saveDoctor(doctor);
	    Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
	    if(doctor!= null)
		     model.addObject("docmsg","sucess");
		 	else
		 		model.addObject("docmsg","error");	
		model.setViewName("adddoctorpage");	
        return model;
	}
	
	
	@RequestMapping(value="/editdoctor",method = RequestMethod.POST)
	public ModelAndView editDoctor(@Valid Doctor doctor){
		logger.debug("Inside DoctorController editdoctor method:::::::");
		ModelAndView model= new ModelAndView();
		model.setViewName("editdoctor");
		doctor.setContactNumber("(+91)"+doctor.getContactNumber());
	    System.out.println(doctor.getId()+"="+doctor.getSirName()+"="+doctor.getFirstName()+"="+doctor.getMiddleName()+"="+doctor.getLastName()+"="+doctor.getGender()+"="+doctor.getEmail()+"="+doctor.getAge()+"="+doctor.getAddress()+"="+doctor.getCity()+"="+doctor.getPincode()+"="+doctor.getQualification()+"="+doctor.getContactNumber());
			doctor=doctorService.updateDoctor(doctor);
		System.out.println("doctor+++===="+doctor);
		model.addObject("doctor",null);
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		if(doctor!= null)
		     model.addObject("docmsg1","sucess");
		 	else
		model.addObject("docmsg1","error");	
        return model;
	}
	@RequestMapping(value="doctorpage")
	public ModelAndView getDoctor(
			){
		logger.debug("Inside DoctorController getdocotor method:::::::");
		ModelAndView model= new ModelAndView();
		List<Doctor> doctor=doctorService.getDoctors();
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.addObject("doctor",doctor);
		model.setViewName("doctorpage");
		return model;
	}
	
	@RequestMapping(value="adddoctorpage")
	public ModelAndView addDoctorPage(
			){
		logger.debug("Inside DoctorController addDoctorpage method:::::::");
		ModelAndView model= new ModelAndView();
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.setViewName("adddoctorpage");
		return model;
	}
	@RequestMapping(value="editdoctorpage")
	public ModelAndView editDoctorPage(@RequestParam("id") int id
			){
		logger.debug("Inside DoctorController editdoctorpage method:::::::");
		ModelAndView model= new ModelAndView();
		Doctor doctor=doctorService.findDoctor(id);
		doctor.setContactNumber(doctor.getContactNumber().substring(5, doctor.getContactNumber().length()));
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.addObject("doctor",doctor);
		model.setViewName("editdoctor");
		return model;
	}
	@RequestMapping(value="/deleteDoctor",method = RequestMethod.POST)
	public String deleteDoctor(@RequestParam Integer id){
		logger.debug("Inside DoctorController deleteDoctor method:::::::");
		doctorService.deleteDoctor(id);
		 return null;
	}
}





