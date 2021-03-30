package com.swpu.bean;

import java.util.List;

public class StuExam {
	
	private int id,examSubject;
	private String examName;
	private List<StuChooseTopic> stuChooseTopic;
	private List<StuFullTopic> stuFullTopics;
	private List<StuLargeTopic> stuLargeTopics;
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
	public List<StuChooseTopic> getStuChooseTopic() {
		return stuChooseTopic;
	}
	public void setStuChooseTopic(List<StuChooseTopic> stuChooseTopic) {
		this.stuChooseTopic = stuChooseTopic;
	}
	public List<StuFullTopic> getStuFullTopics() {
		return stuFullTopics;
	}
	public void setStuFullTopics(List<StuFullTopic> stuFullTopics) {
		this.stuFullTopics = stuFullTopics;
	}
	public List<StuLargeTopic> getStuLargeTopics() {
		return stuLargeTopics;
	}
	public void setStuLargeTopics(List<StuLargeTopic> stuLargeTopics) {
		this.stuLargeTopics = stuLargeTopics;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	
}
