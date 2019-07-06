package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ineo.trust.model.Patient;

@Repository("patientRepository")
public interface PatientRepository extends PagingAndSortingRepository<Patient, Integer> {

	Patient findByReceiptId(Integer receiptId);

	@Transactional
	@Modifying
	@Query(value="update Patient p set p.sirName=:sirName,p.firstName=:firstName,p.middleName=:middleName,p.lastName=:lastName,p.ageYear=:ageYear,"
	        + " p.ageMonth=:ageMonth,p.city=:city,p.pincode=:pincode,p.gender=:gender,p.address=:address,p.contactNumber=:contactNumber"
			+ " where p.id=:id")
	public int updatePatientData(@Param("sirName") String sirName,@Param("firstName")  String firstName,@Param("middleName")  String middleName,@Param("lastName")  String lastName
			,@Param("ageYear") Integer ageYear,@Param("ageMonth") Integer ageMonth,@Param("city") String city,@Param("pincode") Integer pincode,@Param("gender") String gender,
			@Param("address") String address,@Param("contactNumber") String contactNumber,@Param("id") Integer id);




}
