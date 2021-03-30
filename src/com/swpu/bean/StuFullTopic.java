package com.swpu.bean;

public class StuFullTopic {
	
	private int id,stuGrade;
	private String StuAnswer;
	private FullTopic fullTopic;
	private Student student;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStuAnswer() {
		return StuAnswer;
	}
	public void setStuAnswer(String stuAnswer) {
		StuAnswer = stuAnswer;
	}
	public FullTopic getFullTopic() {
		return fullTopic;
	}
	public void setFullTopic(FullTopic fullTopic) {
		this.fullTopic = fullTopic;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public int getStuGrade() {
		return stuGrade;
	}
	public void setStuGrade(int stuGrade) {
		this.stuGrade = stuGrade;
	}
	
}
