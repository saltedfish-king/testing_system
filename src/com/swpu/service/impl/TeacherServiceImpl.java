package com.swpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
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
	
	//通过id查询教师信息
	@Override
	public Teacher getTeacher(Integer id) {
		return teacherDao.getTeacher(id);
	}
	
	//教师登录验证
	@Override
	public Teacher teacherLogin(Teacher teacher) {
		return teacherDao.teacherLogin(teacher);
	}

}
