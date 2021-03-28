package com.swpu.dao;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;

public interface TeacherDao {
	
	//通过id查询教师
	public Teacher getTeacher(Integer id);
	
	//教师验证
	public Teacher teacherLogin(Teacher teacher);
	
	/**
	 * 添加三种不同类型的题目
	 * @param chooseTopic	选择题
	 * @param fullTopic	填空题
	 * @param largeTopic	主观题
	 */
	public void insertChoose(ChooseTopic chooseTopic);
	public void insertFull(FullTopic fullTopic);
	public void insertLarge(LargeTopic largeTopic);
	
	//添加学生
	public void insertStu(Student student);
}
