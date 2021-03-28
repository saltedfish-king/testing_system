package com.swpu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.FullTopic;
import com.swpu.bean.LargeTopic;
import com.swpu.bean.Student;
import com.swpu.bean.Teacher;
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
	@RequestMapping("/insertChoose")
	public String insertChoose(ChooseTopic chooseTopic,Model model) {
		teacherService.insertChoose(chooseTopic);
		return "teacherHomepage";
	}
	@RequestMapping("/insertFull")
	public String insertFull(FullTopic fullTopic,Model model) {
		teacherService.insertFull(fullTopic);
		return "";
	}
	@RequestMapping("/insertLarge")
	public String insertLarge(LargeTopic largeTopic,Model model) {
		teacherService.insertLarge(largeTopic);
		return "";
	}
	
	//教师登录验证
	@RequestMapping("/teacherLogin")
	public String teacherLogin(Teacher teacher, Model model,HttpSession session) {
		Teacher tea = teacherService.getTeacher(teacher.getId());
		if (tea != null) {
			if (tea.getPassword().equals(teacher.getPassword())) {
//				model.addAttribute("teacher", tea);
				
				//将teacher对象存入session，方便重定向之后取值
				session.setAttribute("teacher", tea);
				//重定向一个跳转请求到首页
				return "redirect:/toTeacherHomepage";
			} else {
				model.addAttribute("msg", 2);
				return "redirect:teacherLogin.jsp";
			}
		}
		model.addAttribute("msg", 1);
		return "redirect:teacherLogin.jsp";
	}
	
	//转发到教师首页
	@RequestMapping("/toTeacherHomepage")
	public String toTeacherHomepage() {
		return "teacherHomepage";
	}
}
