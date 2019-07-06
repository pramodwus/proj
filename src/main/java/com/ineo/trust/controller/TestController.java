package com.ineo.trust.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Test;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.model.TestSaveDetails;
import com.ineo.trust.model.User;
import com.ineo.trust.service.AdminService;
import com.ineo.trust.service.DoctorService;
import com.ineo.trust.service.PatientService;
import com.ineo.trust.service.ReceiptService;
import com.ineo.trust.service.TestDetailsService;
import com.ineo.trust.service.TestService;

import javassist.NotFoundException;

@RestController
public class TestController {
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	@Autowired
	DoctorService doctorService;
	@Autowired
	private TestService testService;
	@Autowired
	private ReceiptService receiptService;
	
	@Autowired
	private TestDetailsService testDetailsService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public Test createNewPatient(@Valid Test test) {
		return testService.saveTest(test);
	}

	@RequestMapping(value = "/tests", method = RequestMethod.GET)
	public Page<Test> getTests(Pageable pageable) {
		return testService.findAll(pageable);
	}

	@RequestMapping(value = "/test/{id}", method = RequestMethod.GET)
	public Test retrieveTest(@PathVariable int id) {
		try {
			return testService.retrieveTest(id);
		} catch (NotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/test/{id}", method = RequestMethod.PUT)
	public Test updateTest(@Valid Test test, @PathVariable int id) {
		try {
			return testService.updateTest(test, id);
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value="/addTest",method = RequestMethod.POST)
	public ModelAndView addDoctor(@Valid Test test){
		logger.debug("Inside TestController adddoctor method:::::::");
		ModelAndView model= new ModelAndView();
		System.out.println(test.getRate()+"="+test.getTestCategory()+"="+test.getTestName()+"="+test.getTestTemplate()+"="+test.getId());
    	test=testService.saveTest(test);
    	Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		if(test!= null)
		     model.addObject("testmsg","sucess");
		 	else
		 		model.addObject("testmsg","error");	
		model.setViewName("addtestpage");	
        return model;
	}

@RequestMapping(value="/editTest",method = RequestMethod.POST)
	public ModelAndView editTest(@Valid Test test){
	logger.debug("Inside TestController edittest method:::::::");
		ModelAndView model= new ModelAndView();
		System.out.println("template="+test.getTestTemplate());
		
		  test=testService.editTest(test);
		  Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
			User user=adminService.getUserDetails(auth.getName());
			model.addObject("user",user);
		  model.addObject("test",test);
		  if(test!= null)
		  model.addObject("testmsg1","sucess");
		  else
		  model.addObject("testmsg1","error");
		 
		model.setViewName("edittestpage");	
        return model;
	}



	@RequestMapping(value="/testpage")
	public ModelAndView testPage(){
		logger.debug("Inside TestController testpage method:::::::");
		ModelAndView model= new ModelAndView();
		List<Test> test=testService.findAllTest();
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.addObject("test",test);
		model.setViewName("testpage");	
        return model;
	}
	@RequestMapping(value="/addtestpage")
	public ModelAndView addtestPage(){
		logger.debug("Inside TestController addtestpage method:::::::");
		ModelAndView model= new ModelAndView();
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.setViewName("addtestpage");	
        return model;
	}
	@RequestMapping(value="/edittestpage",method = RequestMethod.POST)
	public ModelAndView edittestPage(@RequestParam("id") int id){
		logger.debug("Inside TestController edittestpage method:::::::");
		ModelAndView model= new ModelAndView();
		Test test=testService.findTestId(id);
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();  
		User user=adminService.getUserDetails(auth.getName());
		model.addObject("user",user);
		model.addObject("test",test);
		model.setViewName("edittestpage");	
        return model;
	}
	@RequestMapping(value="/getTest",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	
	public Test getTest(@RequestBody Test test){
		logger.debug("Inside TestController gettest method:::::::");
		System.out.println(test.getTestName()+test.getTestCategory());
		test=testService.findTestNames(test.getTestName(),test.getTestCategory());
		return test;
	}
	
	@RequestMapping(value="/savedetail",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	public Test testDetails(@RequestBody TestSaveDetails saveTests){
		logger.debug("Inside TestControlle testdetails method:::::::");
		boolean flag=true;
		int i=0;
		int j=0;
		for(i = 0; i <= saveTests.getTestDetail().size()-1; i++) {
			System.out.println("savetestid==="+saveTests.getTestDetail().get(i).getId());
			if(saveTests.getTestDetail().get(i).getTestCategory().equalsIgnoreCase("Test Category") || saveTests.getTestDetail().get(i).getTestName().equalsIgnoreCase("Test Name") ) {
				flag=false;
				break;
			}
	        for( j = i; j <= saveTests.getTestDetail().size()-1; j++) {
	        	
	            if(i != j && saveTests.getTestDetail().get(i).getTestName().equals(saveTests.getTestDetail().get(j).getTestName()) 
	            		&& saveTests.getTestDetail().get(i).getTestCategory().equals(saveTests.getTestDetail().get(j).getTestCategory())){
	            	flag=false;
	            }
	        }
	    }
		
		if(flag==true) {
			
			  testService.saveTestDetails(saveTests.getTestDetail()); String
			  receiptId=saveTests.getTestDetail().stream().map(m->m.getReciptId()).
			  findFirst().get();
			  receiptService.saveOverallRs(receiptId,saveTests.getOverallRs());
			 
		  return new Test();
		}
		else
        return null;
	}
	
	@RequestMapping(value="/deletetest",method = RequestMethod.POST)
	public String deleteTest(@RequestParam Integer testDetailId,@RequestParam Integer receiptId){
		//ModelAndView model= new ModelAndView();
		logger.debug("Inside TestController deletetest method:::::::");
		System.out.println("testdetailid======"+testDetailId);
		
		  testDetailsService.deleteTest(testDetailId);
		/*
		 * List<TestDetails> tesDetail=testDetailsService.getAllTestDetails(receiptId);
		 * Patient patient=patientService.getPatient(receiptId);
		 * List<com.ineo.trust.model.Test> test=testService.getallTest();
		 */
		/*
		 * model.addObject("testList",test); model.addObject("testdetail",tesDetail);
		 * model.addObject("patient",patient); model.setViewName("editreceipt");
		 */
        return null;
	}
	
	@RequestMapping(value="/getTestNames",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Test> getTestNames(@RequestParam String testCategory){
		logger.debug("Inside TestController gettestnames method:::::::");
		System.out.println("testcat=="+testCategory);
		List<Test> testlist=testService.getTestNames(testCategory);
        return testlist;
	}
	
	@RequestMapping(value="/deleteTest",method = RequestMethod.POST)
	public String deleteAddedTest(@RequestParam Integer id){
		logger.debug("Inside TestController deletetest method:::::::");
		testService.deleteAddedTests(id);
		 return null;
	}
	
	
 
}



