package com.swpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.Student;
import com.swpu.dao.StudentDao;
import com.swpu.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentDao studentDao;
	
	//通过id查询学生信息
	@Override
	public Student getStu(Integer id) {
		return studentDao.getStu(id);
	}

	//学生登录验证
	@Override
	public Student stuLogin(Student student) {
		return studentDao.stuLogin(student);
	}

}
