package com.swpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.Student;
import com.swpu.bean.Topic;
import com.swpu.dao.TeacherDao;
import com.swpu.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	TeacherDao teacherDao;
	
	//添加题目
	@Override
	public void insertTopic(Topic topic) {
		teacherDao.insertTopic(topic);
	}
	//添加学生
	@Override
	public void insertStu(Student student) {
		teacherDao.insertStu(student);
	}

}
