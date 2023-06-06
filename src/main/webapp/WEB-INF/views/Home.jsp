<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> 
 
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addEmployee">Add Employee</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="editEmployee">Edit Employee</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<br>
<br>
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-header">
<div class="card-body">

<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
       <th scope="col">Password</th>
        <th scope="col">Designation</th>
         <th scope="col">Salary</th>
         <th scope="col">Action</th>
  
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${allEmployees }" var="emp">

    <tr>
      <th scope="row">${emp.empId }</th>
      <td>${emp.empName }</td>
      <td>${emp.empAddress }</td>
      <td>${emp.empEmail }</td>
      <td>${emp.empPassword }</td>
      <td>${emp.empDesignation }</td>
      <td>${emp.empSalary }</td>
      <td>
     <a href="editEmployee/${emp.empId }" class="btn btn-outline-primary">Edit</a>
     <a href="deleteEmployee/${emp.empId }" class="btn btn-outline-danger">Delete</a>
      </td>
    </tr>
      
  </c:forEach>
   
  </tbody>
</table>

</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>