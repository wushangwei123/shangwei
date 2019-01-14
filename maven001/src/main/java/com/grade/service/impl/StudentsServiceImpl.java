package com.grade.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grade.dao.StudentsMapper;
import com.grade.entity.Students;
import com.grade.service.StudentsService;
@Service
public class StudentsServiceImpl implements StudentsService {

	@Autowired
	private StudentsMapper  studentsMapper;
	
	@Override
	public List<Students> getAllStudents() {
		
		return studentsMapper.getAllStudents();
	}

}
