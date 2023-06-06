package com.SpringMVC.CRUD.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SpringMVC.CRUD.Entity.Emp;
import com.SpringMVC.CRUD.dao.EmpDao;

@Controller
public class MyController {

	@Autowired
	private EmpDao empDao;
	
	@RequestMapping(path="/home")
	public String home(
			Model model
			) {
		
		List<Emp> empList = empDao.getAllEmp();
		model.addAttribute("allEmployees",empList);
		
		return "Home";
	}
	
	@RequestMapping(path="/addEmployee")
	public String addEmp() {
		
		return "AddEmployee";
	}
	
	
	@RequestMapping(path="/editEmployee/{empId}" )
	public String editEmp(
			@PathVariable int empId ,
			Model model
			) {
		
		
		Emp emp = empDao.getEmpById(empId);
		model.addAttribute("employee", emp);
		
		return "EditEmployee";
	}
	
	
	@RequestMapping(path="/createEmployee" , method= RequestMethod.POST)
	public String createEmployee(
			@ModelAttribute Emp emp 
			) {
		
		int i = empDao.saveEmp(emp);
		
		System.out.println(emp);
		
		return "redirect:/home";
	}
	
	@RequestMapping(path="/updateEmployee" , method = RequestMethod.POST)
	public String updateEmp(
			@ModelAttribute Emp emp
			) {
		
		empDao.update(emp);
		
		return "redirect:/home";
	}

	
	@RequestMapping(path="/deleteEmployee/{empId}" , method = RequestMethod.GET)
	public String deleteEmp(
			@PathVariable int empId
			) {
		
		empDao.deleteEmp(empId);
		
		return "redirect:/home";
	}

	
	
}