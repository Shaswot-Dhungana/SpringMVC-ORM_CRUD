<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>

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
          <a class="nav-link active" aria-current="page" href="/CRUD/home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/CRUD/addEmployee">Add Employee</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<div class="container">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<h3>Edit Employee</h3>
</div>
<div class="card-body">

<form action="${pageContext.request.contextPath}/updateEmployee" method="post">
<input type="hidden" name="empId" value="${employee.empId}">
<div class="mb-3">
<label>Enter Employee Name : </label>
<input type="text" name="empName" class="form-control" value="${employee.empName }" >
</div>

<div class="mb-3">
<label>Enter Employee Address : </label>
<input type="text" name="empAddress" class="form-control" value="${employee.empAddress }">
</div>

<div class="mb-3">
<label>Enter Employee E-Mail : </label>
<input type="text" name="empEmail" class="form-control" value="${employee.empEmail }">
</div>

<div class="mb-3">
<label>Enter Employee Password : </label>
<input type="text" name="empPassword" class="form-control" value="${employee.empPassword }">
</div>

<div class="mb-3">
<label>Enter Employee Designation : </label>
<input type="text" name="empDesignation" class="form-control" value="${employee.empDesignation }">
</div>

<div class="mb-3">
<label>Enter Employee Salary : </label>
<input type="text" name="empSalary" class="form-control" value="${employee.empSalary }">
</div>

<button class="btn btn-outline-success"> Update </button>

</form>

</div>
</div>

</div>
</div>
</div>

</body>
</html>