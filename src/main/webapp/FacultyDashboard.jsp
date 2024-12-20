<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    /* Reset and base styling */
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
        display: flex;
        flex-direction: column;
    }

    /* Navbar styling */
    .navbar {
        background-color: #0066cc; /* Blue color */
        color: white;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 1000;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    .navbar .menu-icon {
        font-size: 24px;
        cursor: pointer;
    }
    .navbar .user-info {
        display: flex;
        align-items: center;
        position: relative;
        cursor: pointer;
    }
    .navbar .user-icon {
        font-size: 24px;
        color: white;
    }
    .navbar .username {
        display: none;
        position: absolute;
        top: 45px;
        right: 0;
        background-color: white;
        color: #333;
        padding: 8px 15px;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        white-space: nowrap;
        transition: opacity 0.3s ease;
    }
    .navbar .user-info:hover .username {
        display: block;
        opacity: 1;
    }
    /* Logout button styling */
    .navbar .logout-btn {
        background-color: transparent;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 18px;
        padding: 8px 16px;
        text-align: center;
        transition: color 0.3s ease;
    }
    .navbar .logout-btn:hover {
        color: #ffcc00; /* Highlight color for hover */
    }

    /* Sidebar styling */
    .sidebar {
        background: linear-gradient(180deg, #e0e7fa, #d1fae5);
        color: #333;
        width: 250px;
        height: 100%;
        position: fixed;
        top: 0;
        left: -250px;
        transition: all 0.3s ease;
        z-index: 999;
        box-shadow: 2px 0 8px rgba(0, 0, 0, 0.15);
    }
    .sidebar ul {
        list-style: none;
        padding: 0;
        margin: 80px 0 0;
    }
    .sidebar ul li {
        padding: 15px;
        border-bottom: 1px solid #ccc;
        transition: background-color 0.3s;
    }
    .sidebar ul li:hover {
        background-color: #d1fae5;
    }
    .sidebar ul li a {
        color: #333;
        text-decoration: none;
        display: block;
        transition: color 0.3s;
    }
    .sidebar ul li a:hover {
        color: #0066cc; /* Blue hover effect */
    }
    .sidebar.show {
        left: 0;
    }

    /* Main container */
    .container {
        flex: 1;
        margin-top: 80px;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        width: 100%;
        transition: margin-left 0.3s ease;
    }
    .sidebar.show + .container {
        margin-left: 250px;
    }

    /* Welcome message */
    .welcome-message {
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        color: #4a90e2;
        text-align: center;
    }

    /* Dashboard grid */
    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
        gap: 20px;
        width: 80%;
    }

    /* Dashboard item styling */
    .dashboard-item {
        background: #fff;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        padding: 30px 15px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        position: relative;
        overflow: hidden;
    }
    .dashboard-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
    }
    .dashboard-item i {
        font-size: 48px;
        margin-bottom: 10px;
        color: #0066cc;
        transition: color 0.3s;
    }
    .dashboard-item p {
        font-size: 18px;
        font-weight: bold;
        color: #333;
    }

    /* Footer styling */
    footer {
        background-color: #0066cc;
        color: white;
        text-align: center;
        padding: 15px 0;
        width: 100%;
        font-size: 15px;
    }

    /* Responsive adjustments */
    @media (max-width: 992px) {
        .container {
            padding: 10px;
        }
        .dashboard-grid {
            width: 100%;
        }
        .sidebar {
            width: 200px;
        }
    }
    
    @media (max-width: 768px) {
        .navbar .username {
            font-size: 14px;
        }
        .dashboard-grid {
            grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
            width: 90%;
        }
        .sidebar {
            width: 220px;
            left: -220px;
        }
        .sidebar.show {
            left: 0;
        }
    }

    @media (max-width: 576px) {
        .welcome-message {
            font-size: 22px;
        }
        .navbar {
            padding: 10px;
        }
        .navbar .menu-icon, .navbar .user-icon {
            font-size: 20px;
        }
        .sidebar ul li {
            padding: 10px;
        }
        .dashboard-grid {
            gap: 15px;
            width: 100%;
        }
        .dashboard-item {
        	
            padding: 20px 10px;
        }
        .dashboard-item i {
            font-size: 36px;
        }
        .dashboard-item p {
            font-size: 16px;
        }
    }
</style>



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
        <li><a href="teacher_timetable.jsp">Time Table</a></li>
        <li><a href="facultyPerformance.jsp">Performance</a></li>
        <li><a href="FacultyAttendance.jsp">Attendance</a></li>
        <li><a href="Mentor.jsp">Mentor Mentee</a></li>
        <li><a href="Student.jsp">Students</a></li>
        <li><a href="Employee.jsp">Employees</a></li>
        <li><a href="Adminresult.jsp">Reports</a></li>
        <li><a href="QuestionBank.jsp">Question Bank</a></li>
        
        <li><a href="logout.jsp">logout</a></li>
    </ul>
    </div>

    <div class="container">
        <p class="welcome-message">Welcome to the Faculty Dashboard</p>
        <div class="dashboard-grid">
            <div class="dashboard-item">
                <i class="fas fa-clock"></i>
                <p><a href="teacher_timetable.jsp" style="text-decoration:none;">Time Table</a></p>
            </div>
            <div class="dashboard-item">
    			<i class="fas fa-chart-line"></i>
    			<p><a href="facultyPerformance.jsp" style="text-decoration:none;">Performance</a></p>
			</div>

            <div class="dashboard-item">
                <i class="fas fa-calendar-check"></i>
                <p><a href="FacultyAttendance.jsp" style="text-decoration:none;">Attendance</a></p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-user-friends"></i>
                <p><a href="Mentor.jsp" style="text-decoration:none;">Mentor Mentee</a></p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-user-graduate"></i>
                <p><a href="Student.jsp" style="text-decoration:none;">Students</a></p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-users"></i>
                <p><a href="Employee.jsp" style="text-decoration:none;">Employees</a></p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-book"></i>
                <p><a href="QuestionBank.jsp" style="text-decoration:none;">Question Bank</a></p>
            </div>
            <div class="dashboard-item">
                <i class="fas fa-chart-bar"></i>
                <p><a href="Adminresult.jsp" style="text-decoration:none;">Reports</a></p>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2024 Your Institution Name. All Rights Reserved.
    </footer>

    <script>
        function toggleSidebar() {
            document.getElementById("sidebar").classList.toggle("show");
        }
    </script>
</body>
</html>
