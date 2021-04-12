package com.swpu.dao;

import java.util.List;

import com.swpu.bean.Exam;
import com.swpu.bean.Student;

public interface StudentDao {
	
	//通过id查询学生信息
	public Student getStu(Integer sid);
	
	//学生登录
	public Student stuLogin(Student student);
	
	//学生查询成绩
	public List<Exam> getScore(Integer sid);
}
