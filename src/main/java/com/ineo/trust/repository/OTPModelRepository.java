package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ineo.trust.model.OTPModel;

@Repository
public interface OTPModelRepository extends JpaRepository<OTPModel, Integer> {
	OTPModel findByEmailId(String email);
}
