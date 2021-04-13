package com.swpu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.swpu.bean.Answer;
import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;
import com.swpu.bean.Student;
import com.swpu.service.ExamService;
import com.swpu.service.StudentService;

@Controller
public class ExamController {

	@Autowired
	ExamService examService;
	@Autowired
	StudentService studentService;
	
	/**
	 * 生成试卷思路：
	 * 先查询选择题，创建一个exam对象，
	 * insert exam对象进入数据库
	 * 获取需要的选择题，填空题，
	 * 然后添加进试卷题目联系表
	 * 添加一个判断：如果当前科目还有试卷未完成就无法生成新试卷
	 * 若有未完成
	 * 则通过联系表去查询已有的试卷然后返回
	 */
	@RequestMapping("/createExam")
	public String createExam(Exam exam,Model model) {
		Exam examS = null;
		examS = examService.queryState(exam.getExamSubject());
		if(examS != null) {
			List<ChooseTopic> choose = examService.queryChoose(examS.getEid());
			List<FullTopic> full = examService.queryFull(examS.getEid());
			examS.setChooseTopics(choose);
			examS.setFullTopics(full);
			model.addAttribute("exam", examS);
		}
		else {
			List<ChooseTopic> choose = examService.selectChoose(exam.getExamSubject());
			List<FullTopic> full = examService.selectFull(exam.getExamSubject());
			examService.createExam(exam);
			
			for (FullTopic fullTopic : full) {
				fullTopic.setExamId(exam.getEid());
			}
			for (ChooseTopic chooseTopic : choose) {
				chooseTopic.setExamId(exam.getEid());
			}
			
			examService.EC_Contact(choose);
			examService.EF_Contact(full);
			
			exam.setChooseTopics(choose);
			exam.setFullTopics(full);
			exam.setExamSubject(exam.getExamSubject());
			
			model.addAttribute("exam", exam);
		}
		
		if(exam.getExamSubject() == 0) {
			return "chineseExam";
		}
		else if (exam.getExamSubject() == 1) {
			return "mathExam";
		}
		else{
			return "englishExam";
		}
	}
	
	//学生完成做答后提交答案到数据库
	@RequestMapping(value="/submitExam",method=RequestMethod.POST)
	public String submitExam( Answer answer,Model model) {
		Exam exam = examService.queryState(answer.getSubjects());
		List<ChooseTopic> choose = examService.queryChoose(exam.getEid());
		List<FullTopic> full = examService.queryFull(exam.getEid());
		
		exam.setChooseTopics(choose);
		exam.setFullTopics(full);
		String[] chooses = {answer.getChoose1(),answer.getChoose2(),answer.getChoose3(),answer.getChoose4(),answer.getChoose5(),answer.getChoose6(),answer.getChoose7(),answer.getChoose8()};
		
		for (int i = 0; i < chooses.length; i++) {
			examService.chooseAnswer(chooses[i], choose.get(i).getCid(), answer.getExamId());
		}
		for (int i = 0; i < answer.getStuAnswer().length; i++) {
			examService.fullAnswer(answer.getStuAnswer()[i], full.get(i).getFid(), answer.getExamId());
		}
		examService.changeExam(answer.getExamId());
		
		//根据查询出的题目答案来判断学生试卷的成绩
		int score = 0;
		for (int i = 0; i < chooses.length; i++) {
			if(chooses[i].equals(choose.get(i).getTopicAnswer())) {
				score += 5;
			}
		}
		for (int i = 0; i < answer.getStuAnswer().length; i++) {
			if(answer.getStuAnswer()[i].equals(full.get(i).getTopicAnswer())) {
				score += 10;
			}
		}
		examService.examScore(answer.getExamId(), score);
		
		exam.setScore(score);
		model.addAttribute("Answer", answer);
		model.addAttribute("exam", exam);
		
		return "stuExampage";
	}
	
	//返回学生首页
	@RequestMapping("/backHome")
	public String backHome(int sid,HttpSession session) {
		Student stu = studentService.getStu(sid);
		session.setAttribute("student", stu);
		return "stuHomepage";
	}
	
}
