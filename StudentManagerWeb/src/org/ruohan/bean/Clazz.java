package org.ruohan.bean;

public class Clazz {

	private Integer id;
	private String name;
	private String grade;
	private String subject;
	private Integer num;
	private String leader;
	private String department;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Clazz(Integer id, String name, String grade, String subject,
			Integer num, String leader, String department) {
		super();
		this.id = id;
		this.name = name;
		this.grade = grade;
		this.subject = subject;
		this.num = num;
		this.leader = leader;
		this.department = department;
	}

	public Clazz() {
		super();
		// TODO Auto-generated constructor stub
	}

}
