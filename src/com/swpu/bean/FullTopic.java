package com.swpu.bean;

/**
 * 填空题（只有一个空）
 * @author 13571
 *
 */
public class FullTopic {
	
	private int id,subjects;
	private String topicMsg,topicAnswer;
	private boolean state = false;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSubjects() {
		return subjects;
	}
	public void setSubjects(int subjects) {
		this.subjects = subjects;
	}
	public String getTopicMsg() {
		return topicMsg;
	}
	public void setTopicMsg(String topicMsg) {
		this.topicMsg = topicMsg;
	}
	public String getTopicAnswer() {
		return topicAnswer;
	}
	public void setTopicAnswer(String topicAnswer) {
		this.topicAnswer = topicAnswer;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
}
