package com.swpu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
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
	
	//教师登录验证
	@RequestMapping("/teacherLogin")
	public String teacherLogin(Teacher teacher, Model model) {
		Teacher tea = teacherService.getTeacher(teacher.getId());
		if (tea != null) {
			if (tea.getPassword().equals(teacher.getPassword())) {
				model.addAttribute("teacher", tea);
				return "teacherHomepage";
			} else {
				model.addAttribute("msg", 2);
				return "redirect:teacherLogin.jsp";
			}
		}
		model.addAttribute("msg", 1);
		return "redirect:teacherLogin.jsp";
	}
}
