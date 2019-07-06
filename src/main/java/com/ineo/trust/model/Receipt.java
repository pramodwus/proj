package com.ineo.trust.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="receipt")

public class Receipt   implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 462552141361546102L;


	@Id
	@SequenceGenerator(initialValue=1001, 
    allocationSize=1,
    name = "receipt_sequence", 
    sequenceName="receipt_sequence")
    @GeneratedValue(generator="receipt_sequence")
	@Column(name = "receipt_id")
	private int id;
	
	
	//
	/*
	 * @CreationTimestamp
	 * 
	 * @Temporal(TemporalType.DATE)
	 */
	@Column(name="receipt_date")
	private String receiptDate;
	
	/*
	 * @CreationTimestamp
	 * 
	 * @Temporal(TemporalType.TIME)
	 */
	@Column(name="receipt_time")
	private String receiptTime;
	
	@Column(name="receipt_status")
	private int receiptStatus;
	
	@Column(name="rec_save")
	private int receiptSave;
	
	
	/*@OneToOne(mappedBy="receipt")
	private Patient patient;*/



	@Column(name="overall_rs")
	private String overallRs;



	





	public int getReceiptStatus() {
		return receiptStatus;
	}



	public void setReceiptStatus(int receiptStatus) {
		this.receiptStatus = receiptStatus;
	}



	public int getReceiptSave() {
		return receiptSave;
	}



	public void setReceiptSave(int receiptSave) {
		this.receiptSave = receiptSave;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}








	public String getReceiptDate() {
		/*
		 * LocalDate date = LocalDate.now(ZoneId.of("Asia/Kolkata")); DateTimeFormatter
		 * timeFormatter4 = DateTimeFormatter.ofPattern("dd/MM/yyyy"); String
		 * receiptDate = date.format(timeFormatter4); return receiptDate;
		 */
		return receiptDate;
	}



	public void setReceiptDate(String receiptDate) {
		this.receiptDate = receiptDate;
	}



	public String getReceiptTime() {
		/*
		 * LocalTime time = LocalTime.now(ZoneId.of("Asia/Kolkata")); DateTimeFormatter
		 * timeFormatter3 = DateTimeFormatter.ofPattern("hh:mm a"); String receiptTime =
		 * time.format(timeFormatter3);
		 */
		return receiptTime;
	}



	public void setReceiptTime(String receiptTime) {
		this.receiptTime = receiptTime;
	}



	public String getOverallRs() {
		return overallRs;
	}



	public void setOverallRs(String overallRs) {
		this.overallRs = overallRs;
	}



	
	
	
}



