package com.ineo.trust.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Receipt;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.ReceiptService;
import com.ineo.trust.service.TestDetailsService;
import com.ineo.trust.service.TestService;

@RestController
public class ReceiptController {
	
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	PatientService patientService;
	
	@Autowired
	TestDetailsService testDetailsService;
	
	@Autowired
	TestService  testService;
	
	@Autowired
	ReceiptService receiptService;
	
	 @Autowired 
	    private HttpServletRequest httpServletRequest;
	@RequestMapping(value="/editreceipt",method = RequestMethod.POST)
	public ModelAndView editReceipt(@RequestParam("receiptId") Integer receiptId){
		logger.debug("Inside ReceiptController editReceipt method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		 Patient patient=receiptService.getReceipt(receiptId);
		               //  patientService.getPatientByReceipt(receipt.get);
		 //	Patient patient=patientService.getPatient(receiptId);
		//Patient patient=patientService.retrievePatient(patientId);
		ModelAndView model=new ModelAndView();
		List<TestDetails> tesDetail=testDetailsService.getAllTestDetails(receiptId);
		tesDetail.forEach(m->{
			System.out.println("---"+m.getTestName());
			
		});
		List<com.ineo.trust.model.Test> test=testService.getallTest();
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		model.addObject("testList",test);
		model.addObject("testdetail",tesDetail);
		model.addObject("user",user);
		model.addObject("patient",patient);
		
		model.addObject("editreceipt");
		return model;
	}




	@RequestMapping(value="/printreceipt" ,method = RequestMethod.POST)
	public ModelAndView printReceipt(@RequestParam("receiptId") Integer receiptId){
		logger.debug("Inside ReceiptController printreceipt method:::::::");
		ModelAndView model=new ModelAndView();
		Patient patient=patientService.getPatient(receiptId);
		List<TestDetails> tesDetail=testDetailsService.getAllTestDetails(receiptId);
		/*
		 * long millis=System.currentTimeMillis(); Date date=new Date(millis); Time
		 * time=new Time(millis);
		 */
		/*
		 * DateFormat dateFormat = new SimpleDateFormat("hh:mm aa"); String time =
		 * dateFormat.format(new Date()).toString(); DateFormat dateFormat1 = new
		 * SimpleDateFormat("dd/MM/yyyy");
		 * dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
		 * dateFormat1.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta")); String date =
		 * dateFormat1.format(new Date()).toString();
		 */
		//LocalDate today = LocalDate.now();
		LocalDate date = LocalDate.now(ZoneId.of("Asia/Kolkata"));
		//LocalTime todaytime = LocalTime.now();
		LocalTime time = LocalTime.now(ZoneId.of("Asia/Kolkata"));
		DateTimeFormatter timeFormatter3 = DateTimeFormatter
				.ofPattern("hh:mm a");
		String timenew=time.format(timeFormatter3);
    	Receipt receipt=receiptService.getreceipt(receiptId);
    	HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.addObject("roles",role);
    	 model.addObject("receipt",receipt);
    	  model.addObject("time",timenew);
		  model.addObject("date",date);
		model.addObject("testdetail",tesDetail);
		model.addObject("patient",patient);
		model.setViewName("printreceipt");
		return model;
	}
}
