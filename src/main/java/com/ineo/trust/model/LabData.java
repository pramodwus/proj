package com.ineo.trust.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "lab_data")
public class LabData {

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
	
	@Column(name = "test_name")
	private String testName;
	
	@Column(name = "doc_name")
	private String docName;
	
	@Column(name = "test_template")
	private String testTemplate;
	
	@Column(name = "receipt_id")
	private String reciptId;
	
	
	
	
	
	
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

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	

	public String getTestTemplate() {
		return testTemplate;
	}

	public void setTestTemplate(String testTemplate) {
		this.testTemplate = testTemplate;
	}

	public String getReciptId() {
		return reciptId;
	}

	public void setReciptId(String reciptId) {
		this.reciptId = reciptId;
	}

	
	
	
}



