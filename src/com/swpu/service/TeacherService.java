package com.swpu.service;

import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
import com.swpu.bean.Topic;

public interface TeacherService {
	
	//通过id查询教师
	public Teacher getTeacher(Integer id);
	
	//教师验证
	public Teacher teacherLogin(Teacher teacher);
	
	//添加题目
	public void insertTopic(Topic topic);
	
	//添加学生
	public void insertStu(Student student);
}
