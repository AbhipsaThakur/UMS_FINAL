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
            
</body>
</html>