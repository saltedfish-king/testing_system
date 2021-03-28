package com.swpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
import com.swpu.dao.TeacherDao;
import com.swpu.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	TeacherDao teacherDao;
	
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

	/**
	 * 三种题目的添加
	 */
	@Override
	public void insertChoose(ChooseTopic chooseTopic) {
		teacherDao.insertChoose(chooseTopic);
	}
	@Override
	public void insertFull(FullTopic fullTopic) {
		teacherDao.insertFull(fullTopic);
	}
	@Override
	public void insertLarge(LargeTopic largeTopic) {
		teacherDao.insertLarge(largeTopic);
	}

}
