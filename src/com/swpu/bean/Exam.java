package com.swpu.bean;

import java.util.List;

public class Exam {
	private int eid,examSubject,state,score;
	private String examName,stuName;
	private List<ChooseTopic> chooseTopics;
	private List<FullTopic> fullTopics;
	private List<LargeTopic> largeTopics;
	private int studentId; 
	
	
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getExamSubject() {
		return examSubject;
	}
	public void setExamSubject(int examSubject) {
		this.examSubject = examSubject;
	}
	public List<ChooseTopic> getChooseTopics() {
		return chooseTopics;
	}
	public void setChooseTopics(List<ChooseTopic> chooseTopics) {
		this.chooseTopics = chooseTopics;
	}
	public List<FullTopic> getFullTopics() {
		return fullTopics;
	}
	public void setFullTopics(List<FullTopic> fullTopics) {
		this.fullTopics = fullTopics;
	}
	public List<LargeTopic> getLargeTopics() {
		return largeTopics;
	}
	public void setLargeTopics(List<LargeTopic> largeTopics) {
		this.largeTopics = largeTopics;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	
}
