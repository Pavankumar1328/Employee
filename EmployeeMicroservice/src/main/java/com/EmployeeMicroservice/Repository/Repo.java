package com.EmployeeMicroservice.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.EmployeeMicroservice.Entity.Employee;

import jakarta.transaction.Transactional;

public interface Repo extends JpaRepository<Employee,Integer>{
	@Modifying
	@org.springframework.transaction.annotation.Transactional
	@Query("update Employee e set e.empname=:empname,e.empdept=:empdept,e.empsal=:empsal,e.empimage=:empimage where e.empid=:empid")
	public void updateByempid(String empname, String empdept, int empsal, String empimage, Integer empid);
}
