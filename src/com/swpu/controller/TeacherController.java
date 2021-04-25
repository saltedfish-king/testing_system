package com.swpu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
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
		return "redirect:/toTeacherHomepage";
	}
	@RequestMapping("/insertFull")
	public String insertFull(FullTopic fullTopic,Model model) {
		teacherService.insertFull(fullTopic);
		return "redirect:/toTeacherHomepage";
	}
	@RequestMapping("/insertLarge")
	public String insertLarge(LargeTopic largeTopic,Model model) {
		teacherService.insertLarge(largeTopic);
		return "redirect:/toTeacherHomepage";
	}
	
	//教师登录验证
	@RequestMapping("/teacherLogin")
	public String teacherLogin(Teacher teacher, Model model,HttpSession session) {
		Teacher tea = teacherService.getTeacher(teacher.getTid());
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
	
	/**
	 * 每次只要跳转到首页就需要将所有需要数据查询一边存入session
	 * @param session
	 * @param model
	 * @return
	 */
	//转发到教师首页
	@RequestMapping("/toTeacherHomepage")
	public String toTeacherHomepage(HttpSession session,Model model) {
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		
		//查询自己的题目
		List<ChooseTopic> chooseTopic = teacherService.queryChooseTopic(teacher.getTid());
		List<FullTopic> fullTopic = teacherService.queryFullTopic(teacher.getTid());
		model.addAttribute("chooses", chooseTopic);
		model.addAttribute("fulls", fullTopic);
		
		//查询学生成绩
		List<Exam> scoresAsc = teacherService.queryScoreAsc(teacher.getSubjects());
		for (Exam score : scoresAsc) {
			score.setStuName(teacherService.getStuName(score.getStudentId()));
		}
		session.setAttribute("scoresAsc", scoresAsc);
		List<Exam> scoresDesc = teacherService.queryScoreDesc(teacher.getSubjects());
		for (Exam score : scoresDesc) {
			score.setStuName(teacherService.getStuName(score.getStudentId()));
		}
		session.setAttribute("scoresDesc", scoresDesc);
		return "teacherHomepage";
	}
	
	//查询教师自己发布的题目
	@RequestMapping("/queryTopic")
	public String queryTopic(Integer tid,Model model) {
//		List<ChooseTopic> chooseTopic = teacherService.queryChooseTopic(tid);
//		List<FullTopic> fullTopic = teacherService.queryFullTopic(tid);
//		model.addAttribute("chooses", chooseTopic);
//		model.addAttribute("fulls", fullTopic);
		return "queryTopic";
	}
	
	//对题目进行修改前的查询
	@RequestMapping("/changeChoose")
	@ResponseBody
	public ChooseTopic changeChoose(@RequestBody Integer cid,Model model) {
		ChooseTopic chooseTopic = teacherService.getChoose(cid);
		return chooseTopic;
	}
	@RequestMapping("/changeFull")
	@ResponseBody
	public FullTopic changeFull(@RequestBody Integer fid,Model model) {
		FullTopic fullTopic = teacherService.getFull(fid);
		return fullTopic;
	}
	//进行修改
	@RequestMapping("/updateChoose")
	public String updateChoose(ChooseTopic choose,HttpSession session,Model model) {
		teacherService.updateChoose(choose);
		Teacher tea = teacherService.getTeacher(choose.getTeacherId());
		session.setAttribute("teacher", tea);
		
		//查询自己的题目
		List<ChooseTopic> chooseTopic = teacherService.queryChooseTopic(tea.getTid());
		List<FullTopic> fullTopic = teacherService.queryFullTopic(tea.getTid());
		model.addAttribute("chooses", chooseTopic);
		model.addAttribute("fulls", fullTopic);
		return "redirect:/toTeacherHomepage";
	}
	@RequestMapping("/updateFull")
	public String updateFull(FullTopic full,HttpSession session,Model model) {
		teacherService.updateFull(full);
		Teacher tea = teacherService.getTeacher(full.getTeacherId());
		session.setAttribute("teacher", tea);
		
		//查询自己的题目
		List<ChooseTopic> chooseTopic = teacherService.queryChooseTopic(tea.getTid());
		List<FullTopic> fullTopic = teacherService.queryFullTopic(tea.getTid());
		model.addAttribute("chooses", chooseTopic);
		model.addAttribute("fulls", fullTopic);
		return "redirect:/toTeacherHomepage";
	}
}
