package com.EmployeeMicroservice.Controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.EmployeeMicroservice.Entity.Employee;
import com.EmployeeMicroservice.Repository.Repo;

@Controller
public class EmployeeController {
	
	@Autowired
	Repo repo;
	
	@GetMapping("/get")
	public String get() {
		return "Employee";
	}
	
	
	@PostMapping("/save")
	public String save(Employee emp,@RequestParam("image") MultipartFile file) throws IOException {
		emp.setEmpimage(Base64.getEncoder().encodeToString(file.getBytes()));
		repo.save(emp);
		return "Employee";
	}
	
	@GetMapping("/getall")
	@ResponseBody
	public List<Employee> getall(){
		List<Employee> emp=repo.findAll();
		return emp;
	}
	
	@GetMapping("/deleteByid/{id}")
	@ResponseBody
	public void deleteByid(@PathVariable int id) {
		repo.deleteById(id);
	}
	
	@GetMapping("/findByid/{id}")
	@ResponseBody
	public Employee findByid(@PathVariable int id) {
		Employee emp=repo.findById(id).get();
		return emp;
	}
	
	@PostMapping("/updateByid")
	@ResponseBody
	public void updateByid(@RequestBody Employee employee) {
		repo.updateByempid(employee.empname,employee.empdept,employee.empsal,employee.empimage,employee.empid);
	}
}
