package com.LoginMicroservice.Entity;

import java.util.List;

import org.hibernate.annotations.Comment;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@NotBlank(message = "Username is Blank")
	private String username;
	@NotBlank(message = "Password is Blank")
	private String password;
	@NotBlank(message = "Email is Blank")
	@Email
	private String email;
	@NotBlank(message = "DOB is Blank")
	private String DOB;
	@NotBlank(message = "Phone is Blank")
	@Size(min = 10,max=10,message="Phone No should contain 10 Numbers")
	private String phone;
	@NotBlank(message = "Gender is Blank")
	private String Gender;
	
}
