package com.swpu.dao;

import com.swpu.bean.Student;
import com.swpu.bean.Topic;

public interface TeacherDao {
	
	//添加题目
	public void insertTopic(Topic topic);
	
	//添加学生
	public void insertStu(Student student);
}