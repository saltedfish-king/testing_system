package com.swpu.dao;

import java.util.List;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;

public interface TeacherDao {
	
	//通过id查询教师
	public Teacher getTeacher(Integer tid);
	
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
	
	//查询题目
	public List<ChooseTopic> queryChooseTopic(Integer tid);
	public List<FullTopic> queryFullTopic(Integer tid);
	
	//修改对应题目及其查询（先查询题目显示然后修改）
	public ChooseTopic getChoose(Integer cid);
	public FullTopic getFull(Integer fid);
	public void updateChoose(ChooseTopic choose);
	public void updateFull(FullTopic full);
	
	//根据指定方式查询学生成绩（升序，降序）
	public List<Exam> queryScoreAsc(int examSubject);
	public List<Exam> queryScoreDesc(int examSubject);
	//根据id获取学生姓名
	public String getStuName(int sid);
	
	//学生注册
	public void stuRegister(Student stu);
	
	//修改密码
	public void changeInfo(Teacher teacher);
}
