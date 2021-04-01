package com.swpu.bean;

public class Teacher {
	private Integer tid,topics,subjects;
	private String tName,password;
	
	
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
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
	
}
