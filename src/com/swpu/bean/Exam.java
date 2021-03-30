package com.swpu.bean;

import java.util.List;

public class Exam {
	private int id,examSubject;
	private String examName;
	private List<ChooseTopic> chooseTopics;
	private List<FullTopic> fullTopics;
	private List<LargeTopic> largeTopics;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
}
