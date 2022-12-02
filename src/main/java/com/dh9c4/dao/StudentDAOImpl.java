package com.dh9c4.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dh9c4.data.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Student> query = currentSession.createQuery("from Student order by name", Student.class);
		List<Student> students = query.getResultList();
		return students;
		
	}

	@Override
	public void SaveStudent(Student theStudent) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theStudent);
	}

	@Override
	public void deleteStudent(int IDStudent) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Student> query = currentSession.createQuery("delete from Student where id=:studentID");
		query.setParameter("studentID", IDStudent);
		query.executeUpdate();
	}

	@Override
	public Student getStudent(int IDStudent) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Student student = currentSession.get(Student.class, IDStudent);
		return student;
	}
	@Override
	public List<Student> getStudentByName(String StudentName) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Student> query = currentSession.createQuery("from Student where full_name like :studentName", Student.class);
		query.setParameter("studentName", "%" + StudentName + "%");
		query.list();
		List<Student> students = query.getResultList();
		return students;
		
	}

}
