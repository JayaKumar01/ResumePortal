<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
        <a href="/showForm" class="btn btn-outline-success my-2 my-sm-0">Update</a>

    </nav>

        <div class="mt-5 container">
        <table class="table table-striped table-dark">
            <tr>
              <th scope="col">First Name</th>
              <td scope="col">${user.firstName}</th>
            </tr>
            <tr>
              <th scope="col">Last Name</th>
              <td scope="col">${user.lastName}</th>
            </tr>
            <tr>
              <th scope="col">Email</th>
              <td scope="col">${user.email}</th>
            </tr>
            <tr>
                <th scope="col">Contact Number</th>
                <td scope="col">${user.phone}</th>
            </tr>
            <tr>
                <th scope="col">Designation</th>
                <td scope="col">${user.designation}</th>
            </tr>
            <tr>
                <th scope="col">Summary</th>
                <td scope="col">${user.summary}</th>
            </tr>

        </table>

      </div>



</body>
</html>