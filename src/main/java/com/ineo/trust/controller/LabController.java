package com.ineo.trust.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Doctor;
import com.ineo.trust.model.LabData;
import com.ineo.trust.model.LabDetails;
import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Receipt;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.model.TestSaveDetails;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.DoctorService;
import com.ineo.trust.service.LabService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.ReceiptService;
import com.ineo.trust.service.TestDetailsService;
import com.ineo.trust.service.TestService;

@RestController
public class LabController {
	
	@Autowired
	LabService labService;
	@Autowired PatientService patientService;
	@Autowired TestDetailsService testDetailsService;
	@Autowired AdminService adminService;
	@Autowired 
	private HttpServletRequest httpServletRequest;
	
	@Autowired
	TestService  testService;
	
	@Autowired
	ReceiptService receiptService;
	
	@Autowired
	private DoctorService doctorService;



	private static final Logger logger = LogManager.getLogger(PatientController.class);
	
	
	@RequestMapping(value = "/saveLabData" ,method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	public String saveLabData(@RequestBody TestDetails labtestdetails) {
		logger.debug("Inside LabController saveLabData method:::::::");
		/*
		 * labDetailSave.getLabDetail().forEach(m->{
		 * System.out.println("labdata==="+m.getTestTemplate()+"="+m.getDocName()+"="+m.
		 * getTestName()+"="+m.getTestCategory()+ m.getTestName()+"="+m.getReciptId());
		 * 
		 * });
		 */
		 System.out.println("docname="+labtestdetails.getDoctorName()+"=="+labtestdetails.getTemplate());
		 labService.saveLabTest(labtestdetails);
		 testDetailsService.updateTestDetail(labtestdetails);
		  return "true";
	}






	
	@RequestMapping(value = "/printLabReport" ,method = RequestMethod.POST)
	public ModelAndView printLabReport(@Valid LabData labdata) {
		logger.debug("Inside LabController printLabReport method:::::::");
		ModelAndView model= new ModelAndView();
		System.out.println("lavdata="+labdata.getTestTemplate());
		Patient patient=patientService.getPatientDetail(labdata);
		String refDoc=testDetailsService.getRefDoc(labdata);
		System.out.println("doctor="+refDoc);
		DateFormat dateFormat1 = new SimpleDateFormat("dd/MM/yyyy");	
    	dateFormat1.setTimeZone(TimeZone.getTimeZone("IST"));
    	String date = dateFormat1.format(new java.util.Date()).toString();
	    Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		HttpSession session=httpServletRequest.getSession(); String
		role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		model.addObject("user",user);
	    model.addObject("date",date);
	    model.addObject("refDoc",refDoc);
		model.addObject("patient",patient);
		model.addObject("labdata",labdata);
		model.setViewName("printLabReport");
		return model;
	}
	
	@RequestMapping(value = "/editlabdata" ,method = RequestMethod.POST)
 	public ModelAndView editLabData(@RequestParam("receiptId") Integer receiptId){
		logger.debug("Inside LabController editLabData method:::::::");
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		 Patient patient=receiptService.getReceipt(receiptId);
		               //  patientService.getPatientByReceipt(receipt.get);
	//	 	Patient patient=patientService.getPatient(receiptId);
		//Patient patient=patientService.retrievePatient(patientId);
		ModelAndView model=new ModelAndView();
	//	List<TestDetails> tesDetail=testDetailsService.getAllTestDetails(receiptId.toString());
		List<Doctor> doctor=doctorService.getDoctors();
	/*	tesDetail.forEach(m->{
			System.out.println("---"+m.getTestName());
			
		});   */
		 List<LabDetails> labDetails= testDetailsService.getAllTestData(receiptId.toString());
		// Iterable<Patient>  listIterable=patientService.getAllPatient();
	  // List<Test> test=testService.getallTest();
		HttpSession session=httpServletRequest.getSession();
		String role=(String)session.getAttribute("role");
		model.addObject("roles",role);
		model.addObject("labdetails",labDetails);
	//	model.addObject("listPatient",listIterable);
    // model.addObject("testList",test);
		model.addObject("doctor",doctor);
		//model.addObject("testdetail",tesDetail);
		model.addObject("user",user);
		model.addObject("patient",patient);
		
		model.addObject("editlabdata");
		return model;
	}




	

}
