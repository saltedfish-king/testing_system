package com.swpu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.swpu.bean.Student;
import com.swpu.service.StudentService;


@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	 //通过id查询学生个人信息
	@RequestMapping("/getStu")
	public String getStu(@RequestParam(value="id")Integer id,Model model) {
		Student stu = studentService.getStu(id);
		model.addAttribute("student", stu);
		return "success";
	}
	
	//学生登录验证
	@RequestMapping("/stuLogin")
	public String stuLogin(Student student,Model model,HttpSession session) {
		Student stu = studentService.getStu(student.getSid());
		if (stu != null) {
			if(stu.getPassword().equals(student.getPassword())) {
//				model.addAttribute("student", stu);
				session.setAttribute("student", stu);
				return "redirect:/toStuHomepage";
			}
			else {
				model.addAttribute("msg", 2);
				return "redirect:stuLogin.jsp";
			}
		}
		model.addAttribute("msg", 1);
		return "redirect:stuLogin.jsp";
	}
	
	//转发到学生首页
	@RequestMapping("/toStuHomepage")
	public String toStuHomepage() {
		return "stuHomepage";
	}
}
