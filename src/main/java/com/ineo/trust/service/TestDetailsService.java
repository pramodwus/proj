package com.ineo.trust.service;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ineo.trust.model.LabData;
import com.ineo.trust.model.LabDetails;
import com.ineo.trust.model.Test;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.repository.TestDetailsRepository;
import com.ineo.trust.repository.TestRepository;

@Service
public class TestDetailsService {

	private static final Logger logger = LogManager.getLogger(PatientService.class);
	@Autowired
	TestDetailsRepository testDetailsRepository;
	@Autowired
	TestRepository testRepository;
	public List<TestDetails> getAllTestDetails(Integer receiptId) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestDetailsService getAllTestDetails method:::::::");
		 List<TestDetails> testdetails=testDetailsRepository.findByReciptId(receiptId.toString());
		return testdetails;
	}
	public void  deleteTest(Integer testDetailId) {
		logger.debug("Inside TestDetailsService deltetest method:::::::");
		// TODO Auto-generated method stub
		 testDetailsRepository.deleteById(testDetailId);
		 
	}
	public List<LabDetails> getAllTestData() {
		// TODO Auto-generated method stub
		logger.debug("Inside TestDetailsService getalltestdata method:::::::");
		List<LabDetails> details=new ArrayList<>();
		List<TestDetails> testdetails=testDetailsRepository.findAll();
		//testdetails.forEach(m->{System.out.println(m.getReciptId());});
		//LabDetails testDetail=new LabDetails();
		for( TestDetails testdetails1:testdetails) {
			LabDetails testDetail=new LabDetails();
			testDetail.setTestDetail(testdetails1);
			
			  Test  test=testRepository.findByTetst(testdetails1.getTestCategory(),testdetails1.getTestName());
			  if(test!=null)
			  {
				  System.out.println("not null");
			  testDetail.setTestTemplate(test.getTestTemplate());
			  }
			  else
				  System.err.println("null value");
			details.add(testDetail);
		}
		
		return details;
	}
	
	public List<LabDetails> getAllTestData(String receiptId) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestDetailsService getalltestdata method:::::::");
		List<LabDetails> details=new ArrayList<>();
		try
		{
		List<TestDetails> testdetails=testDetailsRepository.findByReciptId(receiptId);
		//testdetails.forEach(m->{System.out.println(m.getReciptId());});
		//LabDetails testDetail=new LabDetails();
		for( TestDetails testdetails1:testdetails) {
			LabDetails labDetails=new LabDetails();
			labDetails.setTestDetail(testdetails1);
			System.err.println(testdetails1.getReciptId()+testdetails1.getTestCategory()+"="+testdetails1.getTestName());
			  Test  test=testRepository.findByTetst(testdetails1.getTestCategory(),testdetails1.getTestName());
			  if(test!=null)
				  labDetails.setTestTemplate(test.getTestTemplate());
			  else
				  System.err.println("null value");
			details.add(labDetails);
		}
		}
		catch (Exception e) {
			// TODO: handle exception
		 e.printStackTrace();
		}
		return details;
	}



	
	public String getRefDoc( LabData labdata) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestDetailsService getrefdoc method:::::::");
		TestDetails tesdetails= testDetailsRepository.findRefDoc(labdata.getReciptId(),labdata.getTestCategory(),labdata.getTestName());
		return tesdetails.getReferredDoctor();
	}
	
	public void updateTestDetail( TestDetails testdetail) {
		// TODO Auto-generated method stub
		
			System.out.println(testdetail.getDoctorName()+"="+testdetail.getTemplate()+"="+testdetail.getId());
			testDetailsRepository.updateReceipt(testdetail.getDoctorName(),testdetail.getTemplate(),testdetail.getId());
		
	}




}
