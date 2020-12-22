package org.ruohan.bean;

public class Student {
	private Integer id;
	private String studentId;
	private String name;
	private String sex;
	private Integer age;
	private String clazz;
	private String phone;
	private String email;
	private String position;
	private String id_card;
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
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

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getId_card() {
		return id_card;
	}

	public void setId_card(String idCard) {
		id_card = idCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Student(Integer id, String studentId, String name, String sex,
			Integer age, String clazz, String phone, String email,
			String position, String idCard, String address) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.clazz = clazz;
		this.phone = phone;
		this.email = email;
		this.position = position;
		id_card = idCard;
		this.address = address;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

}
