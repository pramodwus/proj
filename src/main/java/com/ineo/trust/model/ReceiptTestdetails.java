package com.ineo.trust.model;

import java.util.List;

public class ReceiptTestdetails {
	private Receipt receipt;
	private List<TestDetails> testdetails;
	private Patient patient;
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Receipt getReceipt() {
		return receipt;
	}
	public void setReceipt(Receipt receipt) {
		this.receipt = receipt;
	}
	public List<TestDetails> getTestdetails() {
		return testdetails;
	}
	public void setTestdetails(List<TestDetails> testdetails) {
		this.testdetails = testdetails;
	}
	
	
	
	
}
