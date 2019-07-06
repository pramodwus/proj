package com.ineo.trust.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Receipt;
import com.ineo.trust.model.ReceiptTestdetails;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.repository.PatientRepository;
import com.ineo.trust.repository.ReceiptRepository;
import com.ineo.trust.repository.TestDetailsRepository;

@Service
public class ReceiptService {
	private static final Logger logger = LogManager.getLogger(PatientService.class);
	@Autowired 
	ReceiptRepository receiptRepository;
	
	@Autowired
	PatientRepository patientRepository;

	@Autowired
	TestDetailsRepository testDetailsRepository;




	public void saveOverallRs(String receiptId, String overallRs) {
		logger.debug("Inside ReceiptService saveOverallRs method:::::::");
		// TODO Auto-generated method stub
		/*
		 * Receipt receipt=new Receipt(); receipt.setId(Integer.parseInt(receiptId));
		 * receipt.setOverallRs(overallRs);
		 */
		LocalDate date = LocalDate.now(ZoneId.of("Asia/Kolkata"));
		//LocalTime todaytime = LocalTime.now();
		DateTimeFormatter timeFormatter4 = DateTimeFormatter
				.ofPattern("dd/MM/yyyy");
		LocalTime time = LocalTime.now(ZoneId.of("Asia/Kolkata"));
		DateTimeFormatter timeFormatter3 = DateTimeFormatter
				.ofPattern("hh:mm a");
		String receiptDate=date.format(timeFormatter4);
		String receiptTime=time.format(timeFormatter3);
    	receiptRepository.updateReceipt(Integer.parseInt(receiptId),overallRs,receiptDate,receiptTime);
	}

	public List<ReceiptTestdetails> getAllReceipt() {
		logger.debug("Inside ReceiptService getAllReceipt method:::::::");
		// TODO Auto-generated method stub
		List<Receipt> receipts=receiptRepository.findAll();
		List<ReceiptTestdetails> receiptTestDetailsList= new ArrayList<ReceiptTestdetails>();
		receipts.forEach(m->{
			Integer patientId=receiptRepository.findByReceiptId(m.getId());
			Patient p=patientRepository.findById(patientId).get();
			ReceiptTestdetails receiptTestdetails=new ReceiptTestdetails();
			receiptTestdetails.setPatient(p);
			receiptTestdetails.setReceipt(m);
			List<TestDetails> list=testDetailsRepository.findByReciptId(Integer.toString(m.getId()));
			receiptTestdetails.setTestdetails(list);
			receiptTestDetailsList.add(receiptTestdetails);
		});
		return receiptTestDetailsList;
	}

	public Receipt getreceipt(Integer receiptId) {
		// TODO Auto-generated method stub
		Optional<Receipt> receipt=receiptRepository.findById(receiptId);
		return receipt.get();
	}
	

	public Patient getReceipt(Integer receiptId) {
		// TODO Auto-generated method stub
		System.out.println("----"+receiptId);
		Integer patientId=receiptRepository.findByReceiptId(receiptId);
		Patient p=patientRepository.findById(patientId).get();
		Receipt receipt=p.getReceipt().stream().filter(m->m.getId() == receiptId).findFirst().get();
		System.out.println("===="+receipt.getId());
		p.setReceiptData(receipt);
		return p;
	}



	

}
