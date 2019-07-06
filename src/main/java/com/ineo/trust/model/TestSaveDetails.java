package com.ineo.trust.model;

import java.util.List;

public class TestSaveDetails {
	private List<TestDetails> testDetail;
	private List<LabData> labDetail;
	private String overallRs;
	
	
	public List<LabData> getLabDetail() {
		return labDetail;
	}
	public void setLabDetail(List<LabData> labDetail) {
		this.labDetail = labDetail;
	}
	public List<TestDetails> getTestDetail() {
		return testDetail;
	}
	public void setTestDetail(List<TestDetails> testDetail) {
		this.testDetail = testDetail;
	}
	public String getOverallRs() {
		return overallRs;
	}
	public void setOverallRs(String overallRs) {
		this.overallRs = overallRs;
	}

	
}



