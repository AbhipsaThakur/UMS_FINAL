<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
</head>
<body>
     
    <div class="navbar">
        <div class="menu-icon" onclick="toggleSidebar()">
            <i class="fas fa-bars"></i>
        </div>
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search Attendance..." aria-label="Search Dashboard">
            <button type="button" onclick="searchAttendance()"><i class="fas fa-search"></i></button>
        </div>
        <div class="user-info">
            <i class="fas fa-bell notification-icon">
                <span class="badge">3</span>
            </i>
            <i class="fas fa-user user-icon"></i>
            <div class="username">
                <%
                    HttpSession sp = request.getSession(false);
                    if (sp != null) {
                        String username = (String) sp.getAttribute("username");
                        out.print(username);
                    }
                %>
            </div>
        </div>
    </div>
    <div class="sidebar" id="sidebar">
        <ul>
            <li><a href="#">Attendance</a></li>
            <li><a href="#">Courses</a></li>
            <li><a href="#">Fees</a></li>
            <li><a href="#">College Info</a></li>
            <li><a href="#">Performance</a></li>
            <li><a href="#">My Report Card</a></li>
            <li><a href="#">Feedback</a></li>
            <li><a href="#">Timetable</a></li>
            <li><a href="#">Assignments</a></li>
            <li><a href="#">Projects</a></li>
        </ul>
    </div>
</body>
</html>