package com.ineo.trust.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ineo.trust.model.OTPModel;
import com.ineo.trust.repository.OTPModelRepository;

@Service
public class OTPModalService {
	@Autowired
	OTPModelRepository otpModelRepository;
	public Boolean checkOtp(String email, String otp) {
		// TODO Auto-generated method stub
		OTPModel otpModal=otpModelRepository.findByEmailId(email);
		System.out.println("otp....."+otpModal.getOtp());
		if(otpModal.getOtp().equals(otp))
			return true;
		else
			return false;
	}

}
