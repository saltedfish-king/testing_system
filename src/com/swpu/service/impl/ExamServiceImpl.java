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
	
	//对未完成试卷的查询
	@Override
	public Exam queryState(int examSubject) {
		return examDao.queryState(examSubject);
	}
	@Override
	public List<ChooseTopic> queryChoose(int eid) {
		return examDao.queryChoose(eid);
	}
	@Override
	public List<FullTopic> queryFull(int eid) {
		return examDao.queryFull(eid);
	}
	
	//将学生返回的答案存入数据库
	@Override
	public void chooseAnswer(String stuAnswer, int cid, int examId) {
		examDao.chooseAnswer(stuAnswer, cid, examId);
	}
	@Override
	public void fullAnswer(String stuAnswer, int fid, int examId) {
		examDao.fullAnswer(stuAnswer, fid, examId);
	}

	@Override
	//提交试卷之后修改试卷状态为已考state=1,并上传考试成绩
	public void changeExam(int examId) {
		examDao.changeExam(examId);
	}
	public void examScore(int examId,int score) {
		examDao.examScore(examId, score);
	}
}
