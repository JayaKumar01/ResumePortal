<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
              Resume Portal
            </a>
            <a href="/demo" class="btn btn-outline-success my-2 my-sm-0">Home</a>
     </nav>
    <div id="container">
            <h3>Save Profile ${user.email}</h3>

            <form:form action="saveUser" modelAttribute="user" method="POST">

                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <form:input path="lastName" cssClass="form-control" disabled="true"/>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Last Name</label>
                    <form:input path="firstName" cssClass="form-control" disabled="true"/>
                </div>
                <div class="form-group">
                     <label for="formGroupExampleInput2">Email</label>
                     <form:input path="email" cssClass="form-control"/>
                </div>
                <div class="form-group">
                     <label for="formGroupExampleInput2">Phone Number</label>
                     <form:input path="phone" cssClass="form-control"/>
                </div>
                <div class="form-group">
                      <label for="formGroupExampleInput2">Summary</label>
                      <form:input path="summary" cssClass="form-control"/>
                </div>
                <div class="form-group">
                       <label for="formGroupExampleInput2">Designation</label>
                       <form:input path="designation" cssClass="form-control"/>
                </div>

                <input type="submit" value="Save" class="btn btn-primary"/>


            </form:form>

     </div>



</body>
</html>