<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BookMyShow</title>
<%@include file="./base.jsp" %>
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
    .form-control {
      border-radius: 30px;
      padding: 20px 30px;
      font-size: 1.2rem;
      font-weight: 500;
      color: #333;
      border: none;
      background-color: #f5f5f5;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    }
    .form-control:focus {
      box-shadow: none;
    }
    .btn-primary {
      border-radius: 30px;
      padding: 15px 30px;
      font-size: 1.2rem;
      font-weight: 500;
      text-transform: uppercase;
      background-color: #f44336;
      border: none;
      transition: all 0.3s ease;
    }
    .btn-primary:hover {
      background-color: #e53935;
    }
    .btn-register {
      background-color: transparent;
      border: none;
      color: #f44336;
      font-size: 1.2rem;
      font-weight: 500;
      text-transform: uppercase;
      margin-top: 20px;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    .btn-register:hover {
      color: #e53935;
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-lg-6 col-md-8 col-sm-10">
        <div class="card">
          <div class="card-body">
            <h1 class="card-title">BookMyShow</h1>
            <form action="auth" method="post">
              <div class="form-group">
                <input type="email" name="email" class="form-control" id="email" placeholder="Email">
              </div>
              <div class="form-group">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
              </div>
               <button class="btn btn-primary btn-block">Log In</button>
            </form>
            <p class="text-center mt-3 mb-0">Don't have an account?</p>
            <a href="register" class="btn btn-primary btn-block">Register</a>
</div></div></div></div></div>
</body>
</html>