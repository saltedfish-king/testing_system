package com.swpu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.swpu.bean.Student;
import com.swpu.bean.Topic;
import com.swpu.service.TeacherService;

@Controller
public class TeacherController {
	
	@Autowired
	TeacherService teacherService;
	
	//添加学生
	@RequestMapping("/insertStu")
	public String insertStu(Student student) {
		teacherService.insertStu(student);
		return "success";
	}
	
	//添加题目信息
	@RequestMapping("/insertTopic")
	public String insertTopic(Topic topic,Model model) {
		teacherService.insertTopic(topic);
		model.addAttribute("topic", topic);
		return "success";
	}
}
