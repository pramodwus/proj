package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ineo.trust.model.LabData;

@Repository
public interface LabDataRepository extends JpaRepository<LabData, Integer>{
	
	@Query(value="select l from LabData l  where l.testCategory=:testCategory and l.testName=:testName and l.reciptId=:reciptId")
	LabData findValues(@Param("reciptId") String reciptId,@Param("testCategory") String testCategory,@Param("testName") String testName);
	
	
}
