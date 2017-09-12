package com.spring.test;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Customer {

	@Pattern(regexp="^[a-zA-Z]+$", message="Invalid name")
	private String firstName;
	
	@Pattern(regexp="^[a-zA-Z]+$", message="Invalid name")
	private String lastName;
	
	private String country;
	private int age;
	
	@NotEmpty (message="Enter username")
	private String username;
	
	@NotEmpty (message="Enter password")
	private String password;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
