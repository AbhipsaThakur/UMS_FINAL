<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Attendance Page</title>
    <style>
        /* Reset some basic styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f0f8ff;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            width: 500px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            color: #0b5394;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            color: #0b5394;
            margin-bottom: 5px;
            display: block;
        }
        select, input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
        }
        select:focus, input[type="date"]:focus {
            border-color: #0b5394;
        }
        .students-list {
            margin-top: 10px;
            max-height: 150px;
            overflow-y: auto;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #f8faff;
        }
        .student {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .student input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.2);
        }
        .submit-btn {
            background-color: #0b5394;
            color: #ffffff;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }
        .submit-btn:hover {
            background-color: #063d73;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Mark Attendance</h2>
        <form action="markAttendance.jsp" method="post">
            <!-- Course Selection -->
            <div class="form-group">
                <label for="course_id">Select Course:</label>
                <select name="course_id" id="course_id">
                    <% 
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "@rashmi2004");
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT * FROM course");
                        while(rs.next()) { 
                    %>
                    <option value="<%= rs.getInt("course_id") %>"><%= rs.getString("course_name") %></option>
                    <% } %>
                </select>
            </div>

            <!-- Date Selection -->
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" name="date" id="date">
            </div>

            <!-- Student List -->
            <h3 style="color: #0b5394; text-align: center; margin-top: 20px;">Students</h3>
            <div class="students-list">
                <% 
                    ResultSet students = stmt.executeQuery("SELECT * FROM student");
                    while(students.next()) { 
                %>
                <div class="student">
                    <input type="checkbox" name="student_<%= students.getInt("student_id") %>" value="Present">
                    <label><%= students.getString("name") %> - <%= students.getString("roll_number") %></label>
                </div>
                <% } %>
            </div>

            <!-- Submit Button -->
            <input type="submit" value="Submit Attendance" class="submit-btn">
        </form>
    </div>
</body>
</html>
