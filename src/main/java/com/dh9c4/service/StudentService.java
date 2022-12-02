package com.dh9c4.service;

import java.util.List;

import com.dh9c4.data.Student;

public interface StudentService {
	public List<Student> getStudents();
	
	public void saveStudent(Student theStudent);
	
	public Student getStudent(int isID);
	
	public void deleteStudent(int isID);
	
	public List<Student> getStudentByName(String Name);
}
