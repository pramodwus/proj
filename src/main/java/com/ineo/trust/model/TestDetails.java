package com.ineo.trust.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name = "test_details")
public class TestDetails  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7006192639126685169L;
	@Id
	@GeneratedValue(
		    strategy= GenerationType.AUTO,
		    generator="native"
		)
	@GenericGenerator(
		    name = "native",
		    strategy = "native"
		)
	@Column(name = "id")
	private int id;
	@Column(name = "test_category")
	private String testCategory;
	
	@Column(name = "test_amount")
	private String testAmount;
	
	@Column(name = "hospital_charges")
	private String hospitalCharges;
	
	
	@Column(name = "doctor_charges")
	private String doctorCharges;
	
	
	@Column(name = "test_name")
	private String testName;
	
	@Column(name = "total_amount")
	private String totalAmount;
	
	@Column(name = "referred_doctor")
	private String referredDoctor;
	
	@Column(name = "receipt_id")
	private String reciptId;
	@Column(name="remarks")
	private String remarks;
	
	@Column(name="doctor_name")
	private String doctorName;
	
	@Column(name="template")
	private String template;


	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTestCategory() {
		return testCategory;
	}

	public void setTestCategory(String testCategory) {
		this.testCategory = testCategory;
	}



	
	public String getDoctorCharges() {
		return doctorCharges;
	}

	public void setDoctorCharges(String doctorCharges) {
		this.doctorCharges = doctorCharges;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	

	public String getTestAmount() {
		return testAmount;
	}

	public void setTestAmount(String testAmount) {
		this.testAmount = testAmount;
	}

	public String getHospitalCharges() {
		return hospitalCharges;
	}

	public void setHospitalCharges(String hospitalCharges) {
		this.hospitalCharges = hospitalCharges;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getReferredDoctor() {
		return referredDoctor;
	}

	public void setReferredDoctor(String referredDoctor) {
		this.referredDoctor = referredDoctor;
	}

	public String getReciptId() {
		return reciptId;
	}

	public void setReciptId(String reciptId) {
		this.reciptId = reciptId;
	}

	


}
