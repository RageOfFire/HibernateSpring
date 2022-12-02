package com.dh9c4.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh9c4.dao.StudentDAO;
import com.dh9c4.data.Student;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentDAO studentDAO;
	@Override
	@Transactional
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentDAO.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student theStudent) {
		// TODO Auto-generated method stub
		studentDAO.SaveStudent(theStudent);
	}

	@Override
	@Transactional
	public Student getStudent(int isID) {
		// TODO Auto-generated method stub
		return studentDAO.getStudent(isID);
	}

	@Override
	@Transactional
	public void deleteStudent(int isID) {
		// TODO Auto-generated method stub
		studentDAO.deleteStudent(isID);
	}
	@Override
	@Transactional
	public List<Student> getStudentByName(String Name) {
		// TODO Auto-generated method stub
		return studentDAO.getStudentByName(Name);
	}
}
