package com.ineo.trust.service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ineo.trust.model.LabData;
import com.ineo.trust.model.Patient;
import com.ineo.trust.model.Receipt;
import com.ineo.trust.repository.PatientRepository;

import javassist.NotFoundException;

@Service("patientService")
public class PatientService {
	private static final Logger logger = LogManager.getLogger(PatientService.class);


	private PatientRepository patientRepository;

	@Autowired
	public PatientService(PatientRepository patientRepository) {
		this.patientRepository = patientRepository;
	}

	public Patient savePatient(Patient patient) {
		logger.debug("Inside PatientService savePatient method:::::::");
		  Set<Receipt> set=new HashSet<>();
		  
		  Receipt receipt=new Receipt();
		  set.add(receipt);
		  patient.setReceipt(set);
		 
		return patientRepository.save(patient);
	}






	public Integer updatePatient(Patient patient) {
		logger.debug("Inside PatientService updatePatient method:::::::");
		
		 System.out.println("patient id"+patient.getId());
		//return patientRepository.save(patient);
		Integer update=patientRepository.updatePatientData(patient.getSirName(),patient.getFirstName(),patient.getMiddleName(),patient.getLastName()
					,patient.getAgeYear(),patient.getAgeMonth(),patient.getCity(),patient.getPincode(),patient.getGender(),
					patient.getAddress(),patient.getContactNumber(),patient.getId());
		return update;
	}




	public Page<Patient> findAll(Pageable pageable) {
		Page<Patient> pages = patientRepository.findAll(pageable);
		return pages;
	}

	public Patient retrievePatient(Integer id) {
		logger.debug("Inside PatientService retrievePatient method:::::::");
		Optional<Patient> patient = patientRepository.findById(id);
		Receipt recipt=patient.get().getReceipt().stream().filter(m->m.getReceiptSave()==0).findFirst().orElse(null);
		if(recipt == null)
		{
			System.out.println("patient is save null");
			Set<Receipt> set=new HashSet<>();
			Receipt newrecipt=new Receipt();
			set.add(newrecipt);
			set.addAll(patient.get().getReceipt());
			patient.get().setReceipt(set);
			Patient updatedPatient =patientRepository.save(patient.get());
			Receipt updatedrecipt=updatedPatient.getReceipt().stream().filter(m->m.getReceiptSave()==0).findFirst().orElse(null);
			System.out.println("updated recipt"+updatedrecipt.getReceiptDate()+"="+updatedrecipt.getReceiptTime());
			updatedPatient.setReceiptData(updatedrecipt);
            return updatedPatient;		   
		}
		patient.get().setReceiptData(recipt);
		return patient.get();
	}







	public Patient updatePatient(Patient patient, int id) throws NotFoundException {
		logger.debug("Inside PatientService updatepatient method:::::::");
		Optional<Patient> patientOptional = patientRepository.findById(id);
		if (!patientOptional.isPresent())
			throw new NotFoundException("id-" + id);
		patient.setId(id);
		return patientRepository.save(patient);
	}

	public Patient findPatient(Integer id) {
		// TODO Auto-generated method stub
		logger.debug("Inside PatientService findpatient method:::::::");
		Optional<Patient> patient=patientRepository.findById(id);
		if(patient.isPresent())
            return  patient.get();
		else
			return null;
	}
	
	public Iterable<Patient> getAllPatient() {
		logger.debug("Inside PatientService getAllPatient method:::::::");
		
		return patientRepository.findAll();
	}

	public Patient getPatient(Integer receiptId) {
		// TODO Auto-generated method stub
		logger.debug("Inside PatientService getpatient method:::::::");
	
		Patient patient=patientRepository.findByReceiptId(receiptId);
		return patient;
	}

	public Patient getPatientDetail( LabData labdata) {
		// TODO Auto-generated method stub
		logger.debug("Inside PatientService getpatientdetail method:::::::");
		System.out.println("receiptid===="+labdata.getReciptId());
			Patient patient=patientRepository.findByReceiptId(Integer.parseInt(labdata.getReciptId()));
		return patient;
	}




}
