<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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