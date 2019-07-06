package com.ineo.trust.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ineo.trust.model.TestDetails;

@Repository
public interface TestDetailsRepository extends JpaRepository<TestDetails, Integer>
{

	List<TestDetails> findByReciptId(String receiptId);
	
	  @Query(value="select t from TestDetails t  where t.testCategory=:testCategory and t.testName=:testName and t.reciptId=:reciptId")
	  TestDetails findRefDoc(String reciptId, String testCategory, String testName);
	 
	  @Transactional
		@Modifying
		@Query(value="update TestDetails testDetail set testDetail.doctorName =:doctorName ,testDetail.template=:template where testDetail.id =:id")
		public int updateReceipt(@Param("doctorName") String doctorName,@Param("template") String template,@Param("id")Integer id);
	 
	    @Transactional
		@Modifying
		@Query(value="update TestDetails testDetail set testDetail.template=:template where testDetail.id =:id")
		public int updateTemplate(@Param("template") String template,@Param("id")Integer id);



}
