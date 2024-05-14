package com.LoginMicroservice.Entity;

import org.springframework.stereotype.Component;

import jakarta.persistence.Lob;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {
	public Integer empid;
	public String empname;
	public String empdept;
	public int empsal;
	@Lob
	public String empimage;
}
