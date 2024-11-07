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
  * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
             overflow: hidden;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #fff;
        }

        .wave {
            position: fixed;
            bottom: 0;
            left: 0;
            height: 100%;
            z-index: -1;
            opacity: 0.5;
               }

        .container {
            width: 100vw;
            height: 100vh;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 7rem;
            padding: 0 2rem;
        }
             .img {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .registration-content {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            text-align: center;
               }

        .img img {
            width: 500px;
            animation: bounce 2s infinite;
        }

        form {
            width: 360px;
            background: rgba(255, 255, 255, 0.1);
            padding: 2rem;
            border-radius: 10px;
             box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .registration-content img {
            height: 100px;
            margin-bottom: 1rem;
        }

        .registration-content h2 {
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
                    <div class="div">
                        <h5>Email</h5>
                        <input type="email" class="input" name="email" required>
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                         </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" class="input" name="password" required>
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Confirm Password</h5>
                        <input type="password" class="input" name="confirmPassword" required>
                    </div>
                </div>
                  <script>
        const inputs = document.querySelectorAll(".input");

        function addcl() {
            let parent = this.parentNode.parentNode;
            parent.classList.add("focus");
        }
        function remcl() {
            let parent = this.parentNode.parentNode;
            if (this.value == "") {
                parent.classList.remove("focus");
            }
        } inputs.forEach(input => {
            input.addEventListener("focus", addcl);
            input.addEventListener("blur", remcl);
        });
    </script>
    <%
    String error = (String) request.getAttribute("error");
    if (error != null) {
        out.println("<p style='color:red;'>" + error + "</p>");
    }
    %>                    

</body>
</html>