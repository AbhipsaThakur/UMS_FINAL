<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%@page import="feedback.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Performance</title>
    <style>
        /* Your CSS styles */
    </style>
</head>
<body>
    <h1>Faculty Performance</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Faculty Name</th>
                <th>Average Rating</th>
                <th>Feedback Count</th>
            </tr>
        </thead>
        <tbody>
        <%
            try {
                // Get database connection
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();

                // SQL query to join faculty_feedback and faculty tables to get faculty names
                String query = "SELECT ff.faculty_id, f.faculty_name, AVG(ff.rating) AS avg_rating, COUNT(ff.feedback) AS feedback_count " +
                               "FROM faculty_feedback ff " +
                               "JOIN faculty f ON ff.faculty_id = f.faculty_id " +
                               "GROUP BY ff.faculty_id, f.faculty_name";

                ResultSet rs = st.executeQuery(query);

                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getString("faculty_name") %></td>
                        <td><%= rs.getDouble("avg_rating") %></td>
                        <td><%= rs.getInt("feedback_count") %></td>
                    </tr>
        <%
                }
                con.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
        </tbody>
    </table>
</body>
</html>
