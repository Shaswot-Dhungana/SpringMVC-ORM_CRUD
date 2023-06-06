package com.SpringMVC.CRUD.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SpringMVC.CRUD.Entity.Emp;



@Repository
public class EmpDaoImple implements EmpDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	@Transactional
	public int saveEmp(Emp emp) {
		int i = (Integer) hibernateTemplate.save(emp);
		return i;
	}

	
	
	public Emp getEmpById(int id) {
		Emp emp = hibernateTemplate.get(Emp.class, id);
		return emp;
	}

	
	
	public List<Emp> getAllEmp() {
		List<Emp> empList = hibernateTemplate.loadAll(Emp.class);
		return empList;
	}

	

	@Transactional
	public void update(Emp emp) {
		hibernateTemplate.update(emp);
		
	}

	
	
	
	@Transactional
	public void deleteEmp(int id) {
		Emp emp = hibernateTemplate.get(Emp.class, id);
		hibernateTemplate.delete(emp);
		
	}



	
	
}
