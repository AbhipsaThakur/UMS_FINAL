<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
    // Retrieve student ID from session
    Integer student_id = (Integer) session.getAttribute("student_id");

    if (student_id == null) {
        out.println("You are not logged in or session expired.");
        return;
    }

    // Database connection and query
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "@rashmi2004");

        String query = "SELECT course.course_name, attendance.date, attendance.status " +
                       "FROM attendance " +
                       "JOIN course ON attendance.course_id = course.course_id " +
                       "WHERE attendance.student_id = ?";
        ps = conn.prepareStatement(query);
        ps.setInt(1, student_id);
        rs = ps.executeQuery();
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Attendance Page</title>
    <style>
        /* Reset and base styling */
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
            width: 600px;
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
        .attendance-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .attendance-table th,
        .attendance-table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        .attendance-table th {
            background-color: #0b5394;
            color: #ffffff;
            font-weight: bold;
        }
        .attendance-table tr:nth-child(even) {
            background-color: #f8faff;
        }
        .status-present {
            color: green;
            font-weight: bold;
        }
        .status-absent {
            color: red;
            font-weight: bold;
        }
        .footer {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Your Attendance</h2>

        <table class="attendance-table">
            <tr>
                <th>Course</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <% 
                while (rs != null && rs.next()) { 
            %>
                <tr>
                    <td><%= rs.getString("course_name") %></td>
                    <td><%= rs.getDate("date") %></td>
                    <td class="<%= rs.getString("status").equalsIgnoreCase("Present") ? "status-present" : "status-absent" %>">
                        <%= rs.getString("status") %>
                    </td>
                </tr>
            <% 
                }
                // Close resources after use
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            %>
        </table>

        <div class="footer">
            <p>&copy; 2024 University Management System</p>
        </div>
    </div>
</body>
</html>
