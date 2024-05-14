package com.LoginMicroservice.Feign;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LoginMicroservice.Entity.Employee;


@FeignClient(value = "EMPLOYEEMICROSERVICE")
public interface EmployeeFeign {

	@GetMapping("/getall")
	@ResponseBody
	public List<Employee> getall();
	
	@GetMapping("/deleteByid/{id}")
	@ResponseBody
	public void deleteByid(@PathVariable int id);
	
	@GetMapping("/findByid/{id}")
	@ResponseBody
	public Employee findByid(@PathVariable int id);
	
	@PostMapping("/updateByid")
	@ResponseBody
	public void updateByid(@RequestBody Employee employee);
}
