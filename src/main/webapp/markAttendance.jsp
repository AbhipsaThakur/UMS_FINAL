<%@ page import="java.sql.*, java.util.*" %>
<%
    Integer faculty_id = (Integer) session.getAttribute("faculty_id"); // Retrieve faculty ID from the session
    if (faculty_id == null) {
        out.println("Error: Faculty ID is missing. Please log in first.");
        return; // Stop execution if faculty_id is not found
    }

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "@rashmi2004");
    String course_id = request.getParameter("course_id");
    String date = request.getParameter("date");

    // Loop through request parameters to find those related to students
    for (Enumeration<String> e = request.getParameterNames(); e.hasMoreElements();) {
        String param = e.nextElement();
        if (param.startsWith("student_")) {
            int student_id = Integer.parseInt(param.substring(8));
            String status = request.getParameter(param);

            PreparedStatement ps = conn.prepareStatement("INSERT INTO attendance (student_id, faculty_id, course_id, date, status) VALUES (?, ?, ?, ?, ?)");
            ps.setInt(1, student_id);
            ps.setInt(2, faculty_id); // Use the actual faculty ID
            ps.setInt(3, Integer.parseInt(course_id));
            ps.setString(4, date);
            ps.setString(5, status);
            ps.executeUpdate();
            ps.close();
        }
    }
    conn.close();
    out.println("Attendance recorded successfully!");
%>
