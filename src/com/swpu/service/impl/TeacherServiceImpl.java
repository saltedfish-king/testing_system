package com.swpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
import com.swpu.dao.TeacherDao;
import com.swpu.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	TeacherDao teacherDao;
	
	//添加学生
	@Override
	public void insertStu(Student student) {
		teacherDao.insertStu(student);
	}
	
	//通过id查询教师信息
	@Override
	public Teacher getTeacher(Integer tid) {
		return teacherDao.getTeacher(tid);
	}
	
	//教师登录验证
	@Override
	public Teacher teacherLogin(Teacher teacher) {
		return teacherDao.teacherLogin(teacher);
	}

	/**
	 * 三种题目的添加
	 */
	@Override
	public void insertChoose(ChooseTopic chooseTopic) {
		teacherDao.insertChoose(chooseTopic);
	}
	@Override
	public void insertFull(FullTopic fullTopic) {
		teacherDao.insertFull(fullTopic);
	}
	@Override
	public void insertLarge(LargeTopic largeTopic) {
		teacherDao.insertLarge(largeTopic);
	}

	//查询题目
	@Override
	public List<ChooseTopic> queryChooseTopic(Integer tid) {
		return teacherDao.queryChooseTopic(tid);
	}

	@Override
	public List<FullTopic> queryFullTopic(Integer tid) {
		return teacherDao.queryFullTopic(tid);
	}

	//修改对应题目及其查询（先查询题目显示然后修改）
	@Override
	public ChooseTopic getChoose(Integer cid) {
		return teacherDao.getChoose(cid);
	}

	@Override
	public FullTopic getFull(Integer fid) {
		return teacherDao.getFull(fid);
	}

	@Override
	public void updateChoose(ChooseTopic choose) {
		teacherDao.updateChoose(choose);
	}

	@Override
	public void updateFull(FullTopic full) {
		teacherDao.updateFull(full);
	}

}
