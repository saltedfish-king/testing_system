package com.swpu.bean;

public class Student {
	
	private String stuName;
	private Integer id,examId;
	
	
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getExamId() {
		return examId;
	}
	public void setExamId(Integer examId) {
		this.examId = examId;
	}
	@Override
	public String toString() {
		return "Student [stuName=" + stuName + ", id=" + id + ", examId=" + examId + "]";
	}
	
}
