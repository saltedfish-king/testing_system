package com.swpu.dao;

import com.swpu.bean.Exam;

public interface ExamDao {
	
	//生成试卷(通过有选择的查询返回一个试卷对象)
	public Exam createExam();
}
