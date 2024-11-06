<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
        html, body {
            height: 100%;
        }

        body {
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar .menu-icon {
            font-size: 30px;
            cursor: pointer;
        }

        .navbar .user-info {
            display: flex;
            align-items: center;
            position: relative;
            margin-right: 20px;
        }

        .navbar .user-icon {
            font-size: 25px;
            cursor: pointer;
            margin-right: 10px;
        }
        .navbar .username {
            font-size: 18px;
            display: none;
            position: absolute;
            top: 40px; /* Adjusted to position below the user icon */
            right: 0;
            background-color: white;
            color: #333;
            padding: 5px 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .navbar .user-info:hover .username {
            display: block;
        }

        .notification-icon {
            position: relative;
            cursor: pointer;
        }

        .notification-icon .badge {
            position: absolute;
            top: -5px;
            right: -10px;
            background-color: red;
            color: white;
            border-radius: 50%;
            padding: 5px 8px;
            font-size: 14px;
        }
</style>
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
    <div class="container">
        <p class="welcome-message">Your success starts here!</p>

        <div class="dashboard-grid">
            <div class="dashboard-item attendance">
                <i class="fas fa-calendar-check"></i>
                <p>Attendance</p>
            </div>
            <div class="dashboard-item course">
                <i class="fas fa-book"></i>
                <p>Courses</p>
            </div>
            <div class="dashboard-item fees">
                <i class="fas fa-dollar-sign"></i>
                <p>Fees</p>
            </div>
            <div class="dashboard-item college-info">
                <i class="fas fa-university"></i>
                <p>College Info</p>
            </div>
            <div class="dashboard-item performance">
                <i class="fas fa-chart-line"></i>
                <p>Performance</p>
            </div>
            <div class="dashboard-item my-report-card">
                <i class="fas fa-file-alt"></i>
                <p>My Report Card</p>
            </div>
            <div class="dashboard-item feedback">
                <i class="fas fa-comments"></i>
                <p>Feedback</p>
            </div>
            <div class="dashboard-item time-table">
                <i class="fas fa-clock"></i>
                <p>Timetable</p>
            </div>
            <div class="dashboard-item assignment">
                <i class="fas fa-tasks"></i>
                <p>Assignments</p>
            </div>
            <div class="dashboard-item project">
                <i class="fas fa-briefcase"></i>
                <p>Projects</p>
            </div>
        </div>
    </div>
    <footer>
        &copy; 2024 Your University. All rights reserved.
    </footer>

    <script>
        function toggleSidebar() {
            document.getElementById('sidebar').classList.toggle('show');
        }

        function searchAttendance() {
            var input = document.getElementById('searchInput').value;
            alert("Searching for: " + input);
        }
    </script>
</body>
</html>