<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
        }
        .forgot-password-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
         h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        p {
            text-align: center;
            color: #666;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #333;
        }
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            border: none;
            color: #fff;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
</style>
</head>
<body>
     <div class="container">
        <div class="forgot-password-box">
            <h2>Forgot Password</h2>
            <p>Enter your email address to reset your password.</p>

            <!-- Display Success or Error Messages -->
            <% 
                String errorMessage = (String) session.getAttribute("errorMessage");
                String successMessage = (String) session.getAttribute("successMessage");
                if (errorMessage != null) {
            %>
                <div style="color: red; margin-bottom: 20px;"><%= errorMessage %></div>
            <% 
            session.removeAttribute("errorMessage");
                } 
                if (successMessage != null) {
            %>
                <div style="color: green; margin-bottom: 20px;"><%= successMessage %></div>
            <%
                    session.removeAttribute("successMessage");
                }
            %>

            <!-- Forgot Password Form -->
            <form action="SendResetMailServlet" method="post">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email">
                <button type="submit" class="submit-btn">Reset Password</button>
            </form>

            <div class="back-to-login">
                <a href="login.jsp">Back to Login</a>
            </div>
        </div>
    </div>
</body>
</html>