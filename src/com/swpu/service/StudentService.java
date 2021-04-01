package com.swpu.service;

import com.swpu.bean.Student;

public interface StudentService {
	
	//通过id查询学生
	public Student getStu(Integer sid);

	//学生登录
	public Student stuLogin(Student student);
	
}
