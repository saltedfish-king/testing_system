package com.swpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;
import com.swpu.dao.ExamDao;
import com.swpu.service.ExamService;

@Service
public class ExamServiceImpl implements ExamService{
	
	@Autowired
	ExamDao examDao;

	//获取题目
	@Override
	public List<ChooseTopic> selectChoose(int subjects) {
		return examDao.selectChoose(subjects);
	}
	@Override
	public List<FullTopic> selectFull(int subjects) {
		return examDao.selectFull(subjects);
	}

	//生成试卷
	@Override
	public void createExam(Exam exam) {
		examDao.createExam(exam);
	}
	
	//添加试卷和题目联系
	@Override
	public void EC_Contact(List<ChooseTopic> choose) {
		examDao.EC_Contact(choose);
	}
	@Override
	public void EF_Contact(List<FullTopic> full) {
		examDao.EF_Contact(full);
	}

}
