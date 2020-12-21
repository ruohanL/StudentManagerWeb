package org.ruohan.bean;

public class Student {
	private Integer id;
	private Integer studentId;
	private String name;
	private String sex;
	private Integer age;
	private String clazz;
	private String phone;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
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

	public Student(Integer id, Integer studentId, String name, String sex,
			Integer age, String clazz, String phone) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.clazz = clazz;
		this.phone = phone;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Student [age=" + age + ", clazz=" + clazz + ", id=" + id
				+ ", name=" + name + ", phone=" + phone + ", sex=" + sex
				+ ", studentId=" + studentId + "]";
	}

}
