
package com.ineo.trust.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ineo.trust.model.Test;

@Repository("testRepository")
public interface TestRepository extends JpaRepository<Test, Integer> {

	Test findByTestCategory(String testName);

	//Test findByTestName(String testName);

	List<Test> findByTestName(String testName);
	@Query(value="select t from Test t  where t.testCategory=:testCategory and t.testName=:testName")
	Test findByTetst(@Param("testCategory") String testCategory,@Param("testName") String testName);
	
	@Query(value="select t from Test t  where t.testCategory=:testCategory")
	List<Test> findByTestCategories(String testCategory);

}



