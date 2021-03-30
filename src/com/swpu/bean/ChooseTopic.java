package com.swpu.bean;

/**
 * 选择题（只表示单选）
 * 每道题5分
 * abcd分别表示四个选项
 * @author 13571
 *
 */
public class ChooseTopic {
	
	private int id,subjects,teacherId;
	private String topicMsg,topicAnswer,chooseA,chooseB,chooseC,chooseD;
	private boolean state = false;
	private int grade = 5;
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
	public String getChooseA() {
		return chooseA;
	}
	public void setChooseA(String chooseA) {
		this.chooseA = chooseA;
	}
	public String getChooseB() {
		return chooseB;
	}
	public void setChooseB(String chooseB) {
		this.chooseB = chooseB;
	}
	public String getChooseC() {
		return chooseC;
	}
	public void setChooseC(String chooseC) {
		this.chooseC = chooseC;
	}
	public String getChooseD() {
		return chooseD;
	}
	public void setChooseD(String chooseD) {
		this.chooseD = chooseD;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
}
