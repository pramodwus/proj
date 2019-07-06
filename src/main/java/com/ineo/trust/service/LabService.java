package com.ineo.trust.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ineo.trust.controller.PatientController;
import com.ineo.trust.model.LabData;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.repository.LabDataRepository;

@Service
public class LabService {
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	@Autowired 
	LabDataRepository labDataRepository;
	public void saveLabTest(TestDetails labdata) {
		// TODO Auto-generated method stub
		LabData lab=new LabData();
		lab.setDocName(labdata.getDoctorName());
		lab.setReciptId(labdata.getReciptId());
		lab.setTestCategory(labdata.getTestCategory());
		lab.setTestName(labdata.getTestName());
		lab.setTestTemplate(labdata.getTemplate());
		logger.debug("Inside  LabService savelabtest method:::::::");
		System.err.println(labdata.getReciptId()+labdata.getTestCategory()+labdata.getTestName());
			LabData labData1=labDataRepository.findValues(labdata.getReciptId(),labdata.getTestCategory(),labdata.getTestName());
			if(labData1==null)
				labDataRepository.save(lab);
			else {
				lab.setId(labData1.getId());
				labDataRepository.save(lab);
			}
			
	
		
	}



	
}
