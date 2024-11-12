<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Course</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
            font-size: 2em;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Edit Course</h1>
    <form action="saveEditedCourse.jsp" method="post">
        <label for="courseName">Course Name</label>
        <input type="text" name="courseName" id="courseName" placeholder="Course Name" required />

        <label for="courseCode">Course Code</label>
        <input type="text" name="courseCode" id="courseCode" placeholder="Course Code" required />

        <label for="schedule">Schedule</label>
        <input type="text" name="schedule" id="schedule" placeholder="Schedule" required />

        <button type="submit" class="btn">Save Changes</button>
    </form>
</div>

</body>
</html>
