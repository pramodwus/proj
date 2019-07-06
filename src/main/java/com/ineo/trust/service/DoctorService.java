package com.ineo.trust.service;

import java.util.List;
import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ineo.trust.controller.PatientController;
import com.ineo.trust.model.Doctor;
import com.ineo.trust.repository.DoctorRepository;

import javassist.NotFoundException;

@Service("doctorService")
public class DoctorService {
	private static final Logger logger = LogManager.getLogger(PatientController.class);
	private DoctorRepository doctorRepository;

	@Autowired
	public DoctorService(DoctorRepository doctorRepository) {
		this.doctorRepository = doctorRepository;
	}

	public Doctor saveDoctor(Doctor doctor) {
		logger.debug("Inside DoctorService savedoctor method:::::::");
		return doctorRepository.save(doctor);
	}

	public Page<Doctor> findAll(Pageable pageable) {
		logger.debug("Inside DoctorService findall method:::::::");
		Page<Doctor> pages = doctorRepository.findAll(pageable);
		return pages;
	}

	public Doctor retrieveDoctor(int id) throws NotFoundException {
		logger.debug("Inside DoctorService retreivedoctor method:::::::");
		Optional<Doctor> doctor = doctorRepository.findById(id);
		if (!doctor.isPresent())
			throw new NotFoundException("id-" + id);
		return doctor.get();
	}
	
	public Doctor updateDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		logger.debug("Inside DoctorService updatedoctor method:::::::");
		 Optional<Doctor> existdoctor= doctorRepository.findById(doctor.getId());
		 if(!existdoctor.isPresent())
			 return existdoctor.get();
		 else {
			 doctor.setId(existdoctor.get().getId());
			 return doctorRepository.saveAndFlush(doctor);
		 }
	}



	
	public Doctor addDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		logger.debug("Inside DoctorService adddoctor method:::::::");
		Doctor doctor1=doctorRepository.findByEmail(doctor.getEmail());
		if(doctor1==null)
		 return doctorRepository.save(doctor);
		return null;
	}
	public Doctor editDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		logger.debug("Inside DoctorService editdoctor method:::::::");
		 Doctor existdoctor= doctorRepository.findByEmail(doctor.getEmail());
		 if(existdoctor==null)
			 return existdoctor;
		 else {
			 doctor.setId(existdoctor.getId());
			 return doctorRepository.saveAndFlush(doctor);
		 }
	}

	public Doctor findDoctor(int id) {
		logger.debug("Inside DoctorService finddoctor method:::::::");
		// TODO Auto-generated method stub
		Optional<Doctor> doctor=doctorRepository.findById(id);
		return doctor.get();
	}

	public List<Doctor> getDoctors() {
		logger.debug("Inside DoctorService getdoctors method:::::::");
		// TODO Auto-generated method stub
		List<Doctor> doctor=doctorRepository.findAll();
		return doctor;
	}

	public void deleteDoctor(Integer id) {
		// TODO Auto-generated method stub
		doctorRepository.deleteById(id);
	}

	

}
