<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String courseName = request.getParameter("course_name");

    try {
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "@rashmi2004");
        PreparedStatement ps = conn.prepareStatement("INSERT INTO course (course_name) VALUES (?)");
        ps.setString(1, courseName);
        int result = ps.executeUpdate();

        if (result > 0) {
            out.println("Course added successfully!");
        } else {
            out.println("Failed to add course.");
        }
        ps.close();
        conn.close();
    } catch (SQLException e) {
        out.println("Error: " + e.getMessage());
    }
%>