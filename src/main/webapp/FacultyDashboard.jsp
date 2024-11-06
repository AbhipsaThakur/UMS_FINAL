<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
      <div class="navbar">
        <div class="menu-icon" onclick="toggleSidebar()">
            <i class="fas fa-bars"></i>
        </div>
        <div class="user-info">
            <i class="fas fa-user user-icon"></i>
            <div class="username">
                <%
                    HttpSession sp = request.getSession(false);
                    if (sp != null) {
                        String username = (String) sp.getAttribute("username");
                        if (username != null) {
                            out.print(username);
                        } else {
                            out.print("Guest");
                        }
                    }
                %>
            </div>
        </div>
    </div>
    <div class="sidebar" id="sidebar">
        <ul>
            <li><a href="#">Assignments</a></li>
            <li><a href="#">Time Table</a></li>
            <li><a href="#">Performance</a></li>
            <li><a href="#">Attendance</a></li>
            <li><a href="#">Mentor Mentee</a></li>
            <li><a href="#">Students</a></li>
            <li><a href="#">Employees</a></li>
            <li><a href="#">Examination</a></li>
            <li><a href="#">Question Bank</a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Feedback</a></li>
        </ul>
    </div>
</body>
</html>