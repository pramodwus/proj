package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ineo.trust.model.Receipt;

@Repository
public interface ReceiptRepository extends JpaRepository<Receipt, Integer>{
	
	@Transactional
	@Modifying
	@Query(value="update Receipt rec set rec.overallRs =:overallRs,rec.receiptDate=:receiptDate,rec.receiptTime=:receiptTime,rec.receiptSave=1,rec.receiptStatus=0 where rec.id =:id")
	public int updateReceipt(@Param("id") Integer receiptId,@Param("overallRs")  String overallRs,@Param("receiptDate") String receiptDate,@Param("receiptTime") String receiptTime);
	
	@Query(
			  value = "SELECT r.patient_idfk FROM receipt r where r.receipt_id=?1", 
			  nativeQuery = true)
	Integer  findByReceiptId(Integer id);




}
