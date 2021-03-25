package com.swpu.bean;

public class Teacher {
	private Integer id,topics,subjects;
	private String tName,password;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTopics() {
		return topics;
	}
	public void setTopics(Integer topics) {
		this.topics = topics;
	}
	public Integer getSubjects() {
		return subjects;
	}
	public void setSubjects(Integer subjects) {
		this.subjects = subjects;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", topics=" + topics + ", subjects=" + subjects + ", tName=" + tName
				+ ", password=" + password + "]";
	}
	
}
