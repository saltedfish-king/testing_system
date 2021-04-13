package com.swpu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.swpu.bean.Answer;
import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;
import com.swpu.bean.Student;
import com.swpu.service.ExamService;
import com.swpu.service.StudentService;


@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	@Autowired
	ExamService examService;
	
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
	
	//学生查看自己的试卷以及成绩
	@RequestMapping("/getScore")
	public String getScore(Integer sid,Model model) {
		List<Exam> exams = studentService.getScore(sid);
		model.addAttribute("exams", exams);
		return "scoreList";
	}
	
	//学生通过成绩单进行试卷的查询
	@RequestMapping(value="/getExamByScore")
	public String getExamByScore(Integer eid,Model model) {
		Exam exam = studentService.getExamByScore(eid);
		List<ChooseTopic> choose = examService.queryChoose(exam.getEid());
		List<FullTopic> full = examService.queryFull(exam.getEid());
		exam.setChooseTopics(choose);
		exam.setFullTopics(full);
		
		Answer answer = new Answer();
		String[] chooses = new String[8];
		String[] fulls = new String[6];
		for (int i = 0; i < choose.size(); i++) {
			chooses[i] = studentService.getChooseAnswer(eid, choose.get(i).getCid());
		}
		for (int i = 0; i < full.size(); i++) {
			fulls[i] = studentService.getFullAnswer(eid, full.get(i).getFid());
		}
		answer.setChoose1(chooses[0]);
		answer.setChoose2(chooses[1]);
		answer.setChoose3(chooses[2]);
		answer.setChoose4(chooses[3]);
		answer.setChoose5(chooses[4]);
		answer.setChoose6(chooses[5]);
		answer.setChoose7(chooses[6]);
		answer.setChoose8(chooses[7]);
		answer.setStuAnswer(fulls);
		model.addAttribute("exam", exam);
		model.addAttribute("Answer", answer);
		
		return "stuExampage";
	}
	
}
