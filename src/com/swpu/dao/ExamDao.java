package com.swpu.dao;

import java.util.List;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;

public interface ExamDao {
	
	
	//随机抽取规定数量的选择填空
	public List<ChooseTopic> selectChoose(int subjects);
	public List<FullTopic> selectFull(int subjects);
	
	//生成试卷
	public void createExam(Exam exam);
	
	//添加试卷和题目联系
	public void EC_Contact(List<ChooseTopic> choose);
	public void EF_Contact(List<FullTopic> full);
	
	//对未完成试卷的查询
	public Exam queryState(int examSubject);
	public List<ChooseTopic> queryChoose(int eid);
	public List<FullTopic> queryFull(int eid); 
	
	//将学生返回的答案存入数据库
	public void chooseAnswer(String stuAnswer,int cid,int examId);
	public void fullAnswer(String stuAnswer,int fid,int examId);
	
	//提交试卷之后修改试卷状态为已考state=1,并上传考试成绩
	public void changeExam(int examId);
	public void examScore(int examId,int score);
}
