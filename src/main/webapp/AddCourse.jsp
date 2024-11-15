<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Course</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            color: #333;
            padding: 20px;
            text-align: center;
        }

        h2 {
            font-size: 2em;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        /* Form Container */
        .form-container {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 0 auto;
        }

        .form-container h3 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Input Fields */
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
        }

        /* Submit Button */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-size: 1.1em;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Error Messages */
        .error {
            color: red;
            margin-top: 10px;
        }

        /* Additional Styling */
        .footer {
            margin-top: 50px;
            font-size: 0.9em;
            color: #777;
        }
    </style>
</head>
<body>

    <h2>Add New Course</h2>

    <div class="form-container">
        <form action="AddCourseAction.jsp" method="post">
            <h3>Enter Course Name</h3>
            <input type="text" name="course_name" required placeholder="Enter course name"><br><br>
            <input type="submit" value="Add Course">
        </form>
    </div>

    <!-- Optional Error Message Block -->
    <div class="error">
        <!-- Display error message here if there are any issues -->
        <% if(request.getAttribute("error") != null) { %>
            <p><%= request.getAttribute("error") %></p>
        <% } %>
    </div>

    <div class="footer">
        <p>&copy; 2024 University Management System | All Rights Reserved</p>
    </div>

</body>
</html>
