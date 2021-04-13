package com.swpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swpu.bean.Exam;
import com.swpu.bean.Student;
import com.swpu.dao.StudentDao;
import com.swpu.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentDao studentDao;
	
	//通过id查询学生信息
	@Override
	public Student getStu(Integer sid) {
		return studentDao.getStu(sid);
	}

	//学生登录验证
	@Override
	public Student stuLogin(Student student) {
		return studentDao.stuLogin(student);
	}

	//学生查询成绩
	@Override
	public List<Exam> getScore(Integer sid) {
		return studentDao.getScore(sid);
	}

	//学生通过成绩单查询试卷
	@Override
	public Exam getExamByScore(Integer eid) {
		return studentDao.getExamByScore(eid);
	}

	//查询对应试卷的答案
	@Override
	public String getChooseAnswer(Integer eid, Integer cid) {
		return studentDao.getChooseAnswer(eid, cid);
	}
	@Override
	public String getFullAnswer(Integer eid, Integer fid) {
		return studentDao.getFullAnswer(eid, fid);
	}
}
