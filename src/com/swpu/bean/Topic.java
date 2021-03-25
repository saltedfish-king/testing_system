package com.swpu.bean;

public class Topic {
	private Integer id,topicLevel,topicKind,subjects;
	private String topicAnswer,topicMsg;
	private boolean state = false;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer gettopicLevel() {
		return topicLevel;
	}
	public void settopicLevel(Integer topicLevel) {
		this.topicLevel = topicLevel;
	}
	public Integer getTopicKind() {
		return topicKind;
	}
	public void setTopicKind(Integer topicKind) {
		this.topicKind = topicKind;
	}
	public Integer getSubjects() {
		return subjects;
	}
	public void setSubjects(Integer subjects) {
		this.subjects = subjects;
	}
	public String getTopicAnswer() {
		return topicAnswer;
	}
	public void setTopicAnswer(String topicAnswer) {
		this.topicAnswer = topicAnswer;
	}
	public String getTopicMsg() {
		return topicMsg;
	}
	public void setTopicMsg(String topicMsg) {
		this.topicMsg = topicMsg;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Topic [id=" + id + ", level=" + topicLevel + ", topicKind=" + topicKind + ", subjects=" + subjects
				+ ", topicAnswer=" + topicAnswer + ", topicMsg=" + topicMsg + ", state=" + state + "]";
	}
	
}
