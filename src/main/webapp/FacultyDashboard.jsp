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
    <div class="container">
        <p class="welcome-message">Welcome to the Faculty Dashboard</p>

        <div class="dashboard-grid">
            <div class="dashboard-item">
                <i class="fas fa-tasks"></i>
                <p>Assignments</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-clock"></i>
                <p>Time Table</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-chart-line"></i>
                <p>Performance</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-calendar-check"></i>
                <p>Attendance</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-user-friends"></i>
                <p>Mentor Mentee</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-user-graduate"></i>
                <p>Students</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-users"></i>
                <p>Employees</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-file-alt"></i>
                <p>Examination</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-book"></i>
                <p>Question Bank</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-chart-bar"></i>
                <p>Reports</p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-comments"></i>
                <p>Feedback</p>
            </div>
        </div> <!-- End of dashboard items -->
    </div> <!-- End of dashboard grid -->
</div>
<footer>
    &copy; 2024 Your Institution Name. All Rights Reserved.
</footer>

<script>
    function toggleSidebar() {
        const sidebar = document.getElementById("sidebar");
        sidebar.classList.toggle("show");
    }
</script>
</body>
</html>