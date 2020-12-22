package org.ruohan.bean;

public class User {

	private Integer id;
	private String userName;
	private String pwd;
	private String name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public User(Integer id, String userName, String pwd, String name) {
		super();
		this.id = id;
		this.userName = userName;
		this.pwd = pwd;
		this.name = name;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

}
