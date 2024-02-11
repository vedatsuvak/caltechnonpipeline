package com.gms.model;

public class Participants {
	private int pid;
	private String pname;
	private int age;
	private String gender; 
	private String phone; 
	private String email; 
	private int bid;
	
	public Participants() {
		// TODO Auto-generated constructor stub
	}
	
	public Participants(int pid, String pname, int age, String gender, String phone, String email, int bid) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.bid = bid;
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	@Override
	public String toString() {
		return "Participants [pid=" + pid + ", pname=" + pname + ", age=" + age + ", gender=" + gender + ", phone="
				+ phone + ", email=" + email + ", bid=" + bid + "]";
	}
	
}
