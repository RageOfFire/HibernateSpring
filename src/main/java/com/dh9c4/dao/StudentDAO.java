package com.dh9c4.dao;

import java.util.List;

import com.dh9c4.data.Student;

public interface StudentDAO {
	public List<Student> getStudents();
	
	public void SaveStudent(Student theStudent);
	
	public void deleteStudent(int IDSudent);
	
	public Student getStudent(int IDStudent);
	
	public List<Student> getStudentByName(String StudentName);
}
