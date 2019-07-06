package com.ineo.trust.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.weaver.ast.Test;
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

import com.ineo.trust.model.Patient;
import com.ineo.trust.model.User;

import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.TestService;

import javassist.NotFoundException;

@RestController
public class PatientController {
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	
	@Autowired 
	private AdminService adminService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private TestService testService;
	
	@Autowired 
	    private HttpServletRequest httpServletRequest;
	@RequestMapping(value = "/patient", method = RequestMethod.POST)
	public Patient createNewPatient(@Valid Patient patient) {
		 logger.debug("Inside PatientController createNewPatient method:::::::");
		return patientService.savePatient(patient);
	}
	
	@RequestMapping(value = "/patients", method = RequestMethod.GET)
	public Page<Patient> getPatients(Pageable pageable) {
		 logger.debug("Inside PatientController getPatients method:::::::");
		return patientService.findAll(pageable);
	}
	
	@RequestMapping(value = "/patient/{id}", method = RequestMethod.GET)
	public Patient retrievePatient(@PathVariable int id) {
		 logger.debug("Inside PatientController retrievePatient method:::::::");
		try {
			return patientService.retrievePatient(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/patient/{id}", method = RequestMethod.PUT)
	public Patient updatePatient(@Valid Patient patient, @PathVariable int id) {
		try {
			return patientService.updatePatient(patient, id);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/savepatient" ,method = RequestMethod.POST)
	public ModelAndView savePatient(@Valid Patient patient) {
		logger.debug("Inside PatientController savePatient method:::::::");
		System.err.println(patient.getAgeMonth());
		 ModelAndView model=new ModelAndView();
		 patient.setContactNumber("(+91)"+patient.getContactNumber());
			model.setViewName("patientregistration");
	// System.out.println("="+patient.getSirName()+"==="+patient.getAddress()+"="+patient.getAge()+"="+patient.getFirstName()+"="+patient.getMiddleName()+"="+patient.getLastName()+"="+patient.getGender()+"="+patient.getContactNumber());
	 patient=patientService.savePatient(patient);	
	  Iterable<Patient>  listIterable=patientService.getAllPatient();
		/*
		 * if(patient!= null) model.addObject("msg","Patient Added Sucessfully!"); else
		 */
	 Integer receiptId=patient.getReceipt().stream().filter(m->m.getReceiptSave()==0).map(m->m.getId()).findFirst().get();
	 Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
	  model.addObject("patientId",patient.getId());
	  model.addObject("receiptId",receiptId);
	    model.addObject("listPatient",listIterable);
      	model.addObject("msg","sucess");	
		return model;
	}
	
	@RequestMapping(value = "/updatepatient" ,method = RequestMethod.POST)
	public ModelAndView updatePatient(@Valid Patient patient) {
		logger.debug("Inside PatientController update method:::::::");
	
		 ModelAndView model=new ModelAndView();
		 patient.setContactNumber("(+91)"+patient.getContactNumber());
		 model.setViewName("frontdesk");
		 System.out.println(patient.getId()+"="+patient.getSirName()+"==="+patient.getAddress()+"="+patient.getAgeYear()+"="+patient.getFirstName()+"="+patient.getMiddleName()+"="+patient.getLastName()+"="+patient.getGender()+"="+patient.getContactNumber());
	    //  System.out.println("patient==="+patient.getReceipt().getId());
		 Integer result=patientService.updatePatient(patient);
		 Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
			User user=adminService.getUserDetails(auth.getName());
			model.addObject("user",user);
		 if(result>0)
		 model.addObject("msg1","sucess"); 
		 else
			   model.addObject("msg1","error");
		 Iterable<Patient>  listIterable=patientService.getAllPatient();
			model.addObject("patient",null);
		   model.addObject("listPatient",listIterable);
		
		return model;
	}



	
	@RequestMapping(value = "/editpatient")
	public ModelAndView editPatient(@RequestParam(value="patientId") Integer patientId) {
		logger.debug("Inside PatientController editPatient method:::::::");
		System.out.println("patient Id"+patientId);
		Patient patient=patientService.retrievePatient(patientId);
	 	Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		patient.setContactNumber(patient.getContactNumber().substring(5, patient.getContactNumber().length()));
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		System.out.println("roles="+role);
		model.addObject("user",user);
		model.addObject("patient",patient);
		 
		model.setViewName("editpatient");
		return model;
	}
	
	@RequestMapping(value = "/patientreciept")
	public ModelAndView addPatientReciept(@RequestParam Integer patientId) {
		logger.debug("Inside PatientController addPatientReciept method:::::::"+patientId);
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		Patient patient=patientService.retrievePatient(patientId);
		ModelAndView model=new ModelAndView();
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		List<com.ineo.trust.model.Test> test=testService.getallTest();
		LocalTime time = LocalTime.now(ZoneId.of("Asia/Kolkata"));
		DateTimeFormatter timeFormatter3 = DateTimeFormatter.ofPattern("hh:mm a");
		String receiptTime = time.format(timeFormatter3);
		LocalDate date = LocalDate.now(ZoneId.of("Asia/Kolkata"));
		DateTimeFormatter timeFormatter4 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		String receiptDate = date.format(timeFormatter4);
		Set<String> set=new HashSet<>();
		test.forEach(m->{
			String data=m.getTestCategory();
			set.add(data);});
		//Set<String> set=test.stream().filter(m->m.getTestCategory()).findFirst().orElse(null);
		model.addObject("date",receiptDate);
		model.addObject("time",receiptTime);
		
		model.addObject("testList",test);
		model.addObject("roles",role);
		System.out.println("rolesssss="+role);
		model.addObject("set",set);
		model.addObject("user",user);
		model.addObject("patient",patient);
		System.out.println("patient details==="+patient);
		model.setViewName("newreceipt");
		return model;
	}
	
	@RequestMapping(value = "/patientregistration")
	public ModelAndView addNewPatient() {
		logger.debug("Inside PatientController addNewPatient method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		ModelAndView model=new ModelAndView();
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		model.addObject("msg","error");
		model.addObject("user",user);
		model.setViewName("patientregistration");
		return model;
	}




}



