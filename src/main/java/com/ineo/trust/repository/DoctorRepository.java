package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ineo.trust.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer> {

	Doctor findByEmail(String email);

	//Doctor findByName(String docterName);
    
}



