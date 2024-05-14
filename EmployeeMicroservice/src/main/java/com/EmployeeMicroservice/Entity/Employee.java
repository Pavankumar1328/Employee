package com.EmployeeMicroservice.Entity;

import org.hibernate.annotations.Comment;
import org.hibernate.annotations.LazyToOne;
import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer empid;
	public String empname;
	public String empdept;
	public int empsal;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	public String empimage;
	
}
