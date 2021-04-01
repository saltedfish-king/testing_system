package com.swpu.service;

import java.util.List;


import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;

public interface ExamService {

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
}
