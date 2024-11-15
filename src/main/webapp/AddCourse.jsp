<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Course</title>
</head>
<body>
    <h2>Add New Course</h2>
    <form action="AddCourseAction.jsp" method="post">
        Course Name: <input type="text" name="course_name" required><br><br>
        <input type="submit" value="Add Course">
    </form>
</body>
</html>
