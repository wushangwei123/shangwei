package com.grade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grade.entity.Students;
import com.grade.service.StudentsService;

@Controller
public class StudentsController {

	@Autowired
	private StudentsService studentsService;
	
	@RequestMapping("show.do")
	public String show(Model model) {
		
		List<Students> list = studentsService.getAllStudents();
		
		model.addAttribute("list",list);
		
		return "index";
	}
	
	@ResponseBody
	@RequestMapping("shows.do")
	public List<Students> show() {
		
		List<Students> list = studentsService.getAllStudents();
		
		return list;
	}

}
