package com.pojo;

public class SandUser {
	private String name;
	private String username;
	private long mobileNo;
	private String emailId;
	private String password;
	private String address;
	private String city;
	private String state;
	private String country;
	public SandUser() {
		super();
	}
	public SandUser(String name, String username, long mobileNo, String emailId, String password,String address,String city,String state,String country) {
		super();
		this.name = name;
		this.username = username;
		this.mobileNo = mobileNo;
		this.emailId = emailId;
		this.password = password;
		this.address=address;
		this.city=city;
		this.state=state;
		this.country=country;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "SandUser [name=" + name + ", username=" + username + ", mobileNo=" + mobileNo + ", emailId=" + emailId
				+ ", password=" + password + ", address=" + address + ", city=" + city + ", state=" + state
				+ ", country=" + country + "]";
	}
	
	

}
