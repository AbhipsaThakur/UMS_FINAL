<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Regristration</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
 <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
 <style>
  <style>

 </style>
</head>
<body>
       <img class="wave" src="img/wave.png">
    <div class="container">
        <div class="img">
            <img src="img/bg.svg">
        </div>
        <div class="registration-content">
            <form action="register" method="post">
                <img src="img/avatar.svg">
                <h2 class="title">Register</h2>
                
                <!-- Error message display -->
                <div class="error-message" style="color: red;">
                    <% if (request.getAttribute("error") != null) { %>
                        <%= request.getAttribute("error") %>
                    <% } %>
                </div>
                    <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Username</h5>
                        <input type="text" class="input" name="username" required>
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-envelope"></i>
                    </div>
</body>
</html>