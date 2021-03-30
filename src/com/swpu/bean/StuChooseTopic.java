package com.swpu.bean;


public class StuChooseTopic {
	
	private int id,stuGrade;
	private String stuAnswer;
	private ChooseTopic chooseTopics;
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
	public ChooseTopic getChooseTopics() {
		return chooseTopics;
	}
	public void setChooseTopics(ChooseTopic chooseTopics) {
		this.chooseTopics = chooseTopics;
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
