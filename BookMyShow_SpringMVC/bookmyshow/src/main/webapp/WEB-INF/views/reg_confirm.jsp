<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <style>
    body {
      background-color: #f5f5f5;
    }
    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    }
    .card-title {
      font-size: 2.5rem;
      font-weight: bold;
      color: #f44336;
      text-align: center;
      margin-top: 30px;
      margin-bottom: 50px;
    }
    .alert {
      border-radius: 30px;
      padding: 20px 30px;
      font-size: 1.2rem;
      font-weight: 500;
      color: #333;
      border: none;
      background-color: #fff;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .alert-success {
      background-color: #e8f5e9;
      color: #43a047;
    }
    .btn-primary {
      border-radius: 30px;
      padding: 15px 30px;
      font-size: 1.2rem;
      font-weight: 500;
      background-color: #f44336;
      border: none;
      transition: all 0.3s ease;
    }
    .btn-primary:hover {
      background-color: #e53935;
    }
    .login-text {
      text-align: center;
      font-size: 1.2rem;
      font-weight: 500;
      color: #333;
      margin-top: 20px;
    }
  </style>
</head>
<body>
<div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-md-4 col-sm-12">
        <div class="card">
          <div class="card-body">
            <h1 class="card-title">BookMyShow</h1>
            <div class="alert alert-success" role="alert">
              Congratulations! You have successfully registered for BookMyShow.
            </div>
            <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Login Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

