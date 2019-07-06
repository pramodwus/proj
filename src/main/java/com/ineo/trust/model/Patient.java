package com.ineo.trust.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name = "patient")
public class Patient  implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1209707310422396622L;
	@Id
	@SequenceGenerator(initialValue=10001, 
    allocationSize=1,
    name = "patient_sequence", 
    sequenceName="patient_sequence")
    @GeneratedValue(generator="patient_sequence")
	@Column(name = "patient_id")
	private int id;
	@Column(name = "sir_name")
	private String sirName;
	 @Column(name = "first_name")
	private String firstName;
	@Column(name = "middle_name")
	private String middleName;
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "age_year")
	private int ageYear;
	@Column(name = "age_month")
	private int ageMonth;
	@Column(name = "city")
	private String city;
	@Column(name = "pincode")
	private Integer pincode;
	@Column(name = "gender")
	private String gender;
	@Column(name = "address")
	private String address;	
	@Column(name = "contact_number")
	private String contactNumber;
	/*@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "receipt_id", referencedColumnName = "receipt_id")
    private Receipt receipt;*/
	
	@OneToMany(cascade=CascadeType.ALL,fetch = FetchType.LAZY)
	@JoinColumn(name="patient_idfk")
    private Set<Receipt>  receipt;	
	
	@Transient
	private Receipt receiptData;

	public Receipt getReceiptData() {
		return receiptData;
	}
	public void setReceiptData(Receipt receiptData) {
		this.receiptData = receiptData;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public int getAgeYear() {
		return ageYear;
	}
	public void setAgeYear(int ageYear) {
		this.ageYear = ageYear;
	}
	public int getAgeMonth() {
		return ageMonth;
	}
	public void setAgeMonth(int ageMonth) {
		this.ageMonth = ageMonth;
	}
	
	public Set<Receipt> getReceipt() {
		return receipt;
	}
	public void setReceipt(Set<Receipt> receipt) {
		this.receipt = receipt;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getSirName() {
		return sirName;
	}
	public void setSirName(String sirName) {
		this.sirName = sirName;
	}
	
	
	

}





