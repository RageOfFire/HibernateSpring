package com.dh9c4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dh9c4.data.Student;
import com.dh9c4.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	StudentService studentService;
	@GetMapping("/list")
	public String listStudent(Model model) {
		List<Student> theStudents = studentService.getStudents();
		model.addAttribute("student", theStudents);
		return "list-student";
	}
	@GetMapping("/addStudent")
	public String addStudent(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "Student-form";
	}
	@PostMapping("/saveStudent")
	public String SaveStudent(@ModelAttribute("student")Student isStudent) {
		studentService.saveStudent(isStudent);
		return "redirect:/student/list";
	}
	@GetMapping("/updateStudent")
	public String UpdateStudent(@RequestParam("studentID") int isID, Model model) {
		Student student = studentService.getStudent(isID);
		model.addAttribute("student", student);
		return "Student-form";
	}
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("studentID") int isID, Model model) {
		studentService.deleteStudent(isID);
		return "redirect:/student/list";
	}
	@GetMapping("/search")
	public String getStudentByName(@RequestParam("studentName") String Name, Model model) {
		List<Student> theStudentsByName = studentService.getStudentByName(Name);
		model.addAttribute("student", theStudentsByName);
		return "list-student";
	}
}
