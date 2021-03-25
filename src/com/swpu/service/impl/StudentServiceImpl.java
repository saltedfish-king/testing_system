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
	
	@Override
	public Student getStu(Integer id) {
		return studentDao.getStu(id);
	}

}
