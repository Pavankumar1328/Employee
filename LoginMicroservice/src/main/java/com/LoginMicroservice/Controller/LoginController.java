package com.LoginMicroservice.Controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.LoginMicroservice.Entity.Employee;
import com.LoginMicroservice.Entity.User;
import com.LoginMicroservice.Feign.EmployeeFeign;
import com.LoginMicroservice.Repository.Repo;

import jakarta.validation.Valid;

@Controller
class LoginController {
	
	@Autowired
	Repo repo;
	
	@Autowired
	EmployeeFeign employeeFeign;

	@GetMapping("/Home")
	public String home() {
		return "home";
	}
	
	@GetMapping("/getlogin")
	public String getlogin() {
		return "login";
	}
	
	@GetMapping("/getregistration")
	public String getregistration(){
		return "Registration";
	}
	
	@PostMapping("/signup")
	public String signup(@Valid User user,BindingResult bindingResult,Model model) {
		if(bindingResult.hasErrors()) {
			model.addAttribute("bindingResult",bindingResult);
			return "Registration";
		}
		else {
			model.addAttribute("saved","Registration Done");
			repo.save(user);
			return "Registration";
		}
	}
	
	@PostMapping("/signin")
	public String signin(@RequestParam String username,@RequestParam String password,Model model) {
		User user=repo.findByUsername(username);
		if(user==null) {
			model.addAttribute("incorrect","Username & Password is incorrect");
			return "login";
		}
		if(user.getUsername().equals(username) && user.getPassword().equals(password)) {
			List<Employee> emp=employeeFeign.getall();
			model.addAttribute("emps", emp);
			return "Employee";
		}
		else {
			model.addAttribute("incorrect","Username & Password is incorrect");
			return "login";
		}
	}
	
	@GetMapping("/deleteemployee")
	public String deleteByemployeeid(@RequestParam int id,Model model) {
		employeeFeign.deleteByid(id);
		List<Employee> emp=employeeFeign.getall();
		model.addAttribute("emps", emp);
		return "Employee";
	}
	
	@GetMapping("/updateemployee")
	public String updateByemployee(@RequestParam int id,Model model) {
		Employee emp=employeeFeign.findByid(id);
		model.addAttribute("emp", emp);
		return "Updateemployee";
	}
	
	@PostMapping("/updateemployeebyid")
	public String updateemployeeByid(@RequestParam int empid,@RequestParam String empname,@RequestParam String empdept,@RequestParam int empsal,
			@RequestParam("image") MultipartFile file) throws IOException {
		Employee employee=new Employee();
		employee.setEmpid(empid);
		employee.setEmpname(empname);
		employee.setEmpdept(empdept);
		employee.setEmpsal(empsal);
		employee.setEmpimage(Base64.getEncoder().encodeToString(file.getBytes()));
		employeeFeign.updateByid(employee);
		return "saved";
	}
}

