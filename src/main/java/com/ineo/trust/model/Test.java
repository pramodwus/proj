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
@Table(name = "test")
public class Test  implements Serializable {

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
	@Column(name = "test_id")
	private int id;
	@Column(name = "test_category")
	private String testCategory;
	
	@Column(name = "rate")
	private int rate;
	
	@Column(name = "doctor_percentage")
	private String doctorpercentage;
	
	
	@Column(name = "test_name")
	private String testName;
	
	@Column(name="test_template")
	private String testTemplate;

	
	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
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

	

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	
	public String getDoctorpercentage() {
		return doctorpercentage;
	}

	public void setDoctorpercentage(String doctorpercentage) {
		this.doctorpercentage = doctorpercentage;
	}

	public String getTestTemplate() {
		return testTemplate;
	}

	public void setTestTemplate(String testTemplate) {
		this.testTemplate = testTemplate;
	}

	
	
	
	

}
