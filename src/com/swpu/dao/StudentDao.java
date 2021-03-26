package com.swpu.dao;

import com.swpu.bean.Student;

public interface StudentDao {
	
	//通过id查询学生信息
	public Student getStu(Integer id);
	
	//学生登录
	public Student stuLogin(Student student);
}
