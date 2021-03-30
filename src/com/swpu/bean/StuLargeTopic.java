package com.swpu.bean;

public class StuLargeTopic {
	
	private int id,stuGrade;
	private String stuAnswer;
	private LargeTopic largeTopic;
	private Student student;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStuAnswer() {
		return stuAnswer;
	}
	public void setStuAnswer(String stuAnswer) {
		this.stuAnswer = stuAnswer;
	}
	public LargeTopic getLargeTopic() {
		return largeTopic;
	}
	public void setLargeTopic(LargeTopic largeTopic) {
		this.largeTopic = largeTopic;
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
