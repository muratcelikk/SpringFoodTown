package com.work.security;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SecurityApplication {
	
	@Autowired Random randomSum;

	public static void main(String[] args) {
		SpringApplication.run(SecurityApplication.class, args);
		
	}
}
