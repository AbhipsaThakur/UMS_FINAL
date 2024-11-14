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

<html>
<head>
    <title>Student Attendance Page</title>
</head>
<body>
    <h2>Your Attendance</h2>

    <table border="1">
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
                <td><%= rs.getString("status") %></td>
            </tr>
        <% 
            }
            // Close resources after use
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        %>
    </table>
</body>
</html>
