package com.swpu.service;

import java.util.List;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;

public interface TeacherService {
	
	//通过id查询教师
	public Teacher getTeacher(Integer tid);
	
	//教师验证
	public Teacher teacherLogin(Teacher teacher);
	
	//添加题目
	public void insertChoose(ChooseTopic chooseTopic);
	public void insertFull(FullTopic fullTopic);
	public void insertLarge(LargeTopic largeTopic);
	
	//添加学生
	public void insertStu(Student student);
	
	//查询题目
	public List<ChooseTopic> queryChooseTopic(Integer tid);
	public List<FullTopic> queryFullTopic(Integer tid);
	
	//修改对应题目及其查询（先查询题目显示然后修改）
	public ChooseTopic getChoose(Integer cid);
	public FullTopic getFull(Integer fid);
	public void updateChoose(ChooseTopic choose);
	public void updateFull(FullTopic full);
}
