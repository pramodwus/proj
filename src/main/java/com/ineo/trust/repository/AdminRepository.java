package com.ineo.trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ineo.trust.model.User;

@Repository
public interface AdminRepository extends JpaRepository<User, Long> {
	
	  @Query(value="select u from User u inner join  u.roles where u.email=:email")
	  User findByEmail(@Param("email") String email);
	 
	 
}