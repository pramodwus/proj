package com.ineo.trust.service;

import java.util.List;
import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ineo.trust.model.Test;
import com.ineo.trust.model.TestDetails;
import com.ineo.trust.repository.TestDetailsRepository;
import com.ineo.trust.repository.TestRepository;

import javassist.NotFoundException;

@Service("testService")
public class TestService {
	private static final Logger logger = LogManager.getLogger(PatientService.class);
	@Autowired
	private TestRepository testRepository;

	@Autowired
	private TestDetailsRepository testDetailsRepository;


	public Test saveTest(Test test) {
		logger.debug("Inside TestService saveTest method:::::::");
		List<Test> test1=testRepository.findAll();
		Test b=test1.stream().filter(m->m.getTestName().equalsIgnoreCase(test.getTestName()) && m.getTestCategory().equalsIgnoreCase(test.getTestCategory())).findFirst().orElse(null);
		System.out.println("exist====="+b);
		if(b==null)
		    return testRepository.save(test);
		else
			return null;
	}

	public Page<Test> findAll(Pageable pageable) {
		logger.debug("Inside TestService findall method:::::::");
		Page<Test> pages = testRepository.findAll(pageable);
		return pages;
	}

	public Test retrieveTest(int id) throws NotFoundException {
		Optional<Test> test = testRepository.findById(id);
		if (!test.isPresent())
			throw new NotFoundException("id-" + id);
		return test.get();
	}

	public Test updateTest(Test test, int id) throws NotFoundException {
		Optional<Test> testOptional = testRepository.findById(id);
		if (!testOptional.isPresent())
			throw new NotFoundException("id-" + id);
		test.setId(id);
		return testRepository.save(test);
	}
	public Test editTest(Test test) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService edit test method:::::::");
		Optional<Test> tests=testRepository.findById(test.getId());
		if(test.getTestCategory().equals(tests.get().getTestCategory()) && test.getTestName().equals(tests.get().getTestName())) {
			tests.get().setId(test.getId());
			  return testRepository.save(test);
		}
		else
			return null;
	}

	public List<Test> findAllTest() {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService findalltest method:::::::");
		List<Test> list=testRepository.findAll();
		return list;
	}

	public Test findTest(String testname) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService findtest method:::::::");
		//Test test1=testRepository.findByTestName(testname);
		Test test1=null;
		return test1;
	}

	public Test findTestNames(String testName,String testCategory) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService findtestnames method:::::::");
		System.out.println("testname=="+testName);
		Test test1=null;
		List<Test> test=testRepository.findByTestName(testName);
		if(test.size()>0 && test != null)
		 test1=test.stream().filter(m->m.getTestCategory().equals(testCategory) && m.getTestName().equals(testName)).findFirst().get();
		
		return test1;
	}

	public void saveTestDetails(List<TestDetails> tests) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService saveTestdetails method:::::::");
		for(TestDetails testdetail:tests) {
			System.out.println("id==="+testdetail.getId());
			if(testdetail.getId()!=0) {
			Optional<TestDetails> testd=testDetailsRepository.findById(testdetail.getId());
			if(testd.isPresent()) {
				testdetail.setId(testd.get().getId());
				testdetail=testDetailsRepository.save(testdetail);
				Test test=testRepository.findByTetst(testdetail.getTestCategory(),testdetail.getTestName());
				 if(test != null)
				 {
					 testDetailsRepository.updateTemplate(test.getTestTemplate(), testdetail.getId());
				 }
			}
			else
				testDetailsRepository.save(testdetail);
		}
			else {
				//testdetail.setId(null);
			testdetail=testDetailsRepository.save(testdetail);
			Test test=testRepository.findByTetst(testdetail.getTestCategory(),testdetail.getTestName());
			 if(test != null)
			 {
				 testDetailsRepository.updateTemplate(test.getTestTemplate(), testdetail.getId());
			 }
			}
		}
		
	}




	public Test findTestId(int id) {
		logger.debug("Inside TestService findtestid method:::::::");
		// TODO Auto-generated method stub
		Optional<Test> test=testRepository.findById(id);
		return test.get();
	}

	public List<Test> getallTest() {
		logger.debug("Inside TestService getalltest method:::::::");
		// TODO Auto-generated method stub
		List<Test> test=testRepository.findAll();
		return test;
	}

	public List<Test> getTestNames(String testCategory) {
		// TODO Auto-generated method stub
		logger.debug("Inside TestService gettestnames method:::::::");
		List<Test> testlist=testRepository.findByTestCategories(testCategory);
		if(testlist.size()>0 && testlist != null)
		testlist.forEach(m->{System.out.println("aa gya==="+m.getTestName());});
		return testlist;
	}

	public void deleteAddedTests(Integer id) {
		// TODO Auto-generated method stub
		//Optional<Test> test=testRepository.findById(id);
		testRepository.deleteById(id);
	}	

}
