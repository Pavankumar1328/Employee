package com.LoginMicroservice.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.LoginMicroservice.Entity.User;

public interface Repo extends JpaRepository<User, Integer> {
	public User findByUsername(String username);
}
