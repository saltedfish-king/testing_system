package com.swpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.swpu.bean.Exam;
import com.swpu.dao.ExamDao;
import com.swpu.service.ExamService;

public class ExamServiceImpl implements ExamService{
	
	@Autowired
	ExamDao examDao;

	//生成试卷
	@Override
	public Exam createExam() {
		Exam exam = examDao.createExam();
		return exam;
	}

}
