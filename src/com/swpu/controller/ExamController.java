package com.swpu.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.swpu.bean.ChooseTopic;
import com.swpu.bean.Exam;
import com.swpu.bean.FullTopic;
import com.swpu.service.ExamService;

@Controller
public class ExamController {

	@Autowired
	ExamService examService;
	
	/**
	 * 生成试卷思路：
	 * 先查询选择题，创建一个exam对象，
	 * insert exam对象进入数据库
	 * 获取需要的选择题，填空题，
	 * 然后添加进试卷题目联系表
	 */
	@RequestMapping("/createExam")
	public String createExam(Exam exam,Model model) {
		List<ChooseTopic> choose = examService.selectChoose(exam.getExamSubject());
		List<FullTopic> full = examService.selectFull(exam.getExamSubject());
		examService.createExam(exam);
		
		for (FullTopic fullTopic : full) {
			fullTopic.setExamId(exam.getId());
		}
		for (ChooseTopic chooseTopic : choose) {
			chooseTopic.setExamId(exam.getId());
		}
		
		examService.EC_Contact(choose);
		examService.EF_Contact(full);
		
		exam.setChooseTopics(choose);
		exam.setFullTopics(full);
		exam.setExamSubject(exam.getExamSubject());
		
		model.addAttribute("exam", exam);
		
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
	
}
