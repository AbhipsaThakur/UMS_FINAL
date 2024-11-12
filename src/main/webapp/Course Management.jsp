<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Management</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* General body styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #343a40;
        }

        /* Main container for the page */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        /* Heading Styles */
        h1 {
            text-align: center;
            font-size: 2.5em;
            color: #007bff;
            margin-bottom: 30px;
        }

        /* Button Styling */
        .btn {
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            font-size: 1em;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .btn:active {
            transform: scale(0.98);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 40px;
            background-color: #f9f9f9;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 1.1em;
        }

        td {
            background-color: #f1f1f1;
            font-size: 1em;
        }

        .action-btns a {
            color: #007bff;
            text-decoration: none;
            margin: 0 8px;
            font-size: 1.3em;
            transition: color 0.3s ease;
        }

        .action-btns a:hover {
            color: #0056b3;
        }

        /* Form Styling */
        .form-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 15px;
            margin-top: 40px;
            margin-bottom: 40px;
        }

        .form-container input, .form-container select {
            width: 48%;
            padding: 12px;
            font-size: 1em;
            border-radius: 8px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
        }

        .form-container input:focus, .form-container select:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        /* Section Title */
        .section-title {
            font-size: 1.5em;
            color: #007bff;
            margin-bottom: 15px;
        }

        /* Card-like Boxes for better layout */
        .card {
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 48%;
            margin-bottom: 20px;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .container {
                width: 95%;
            }

            .form-container input,
            .form-container select {
                width: 100%;
            }

            .card {
                width: 100%;
            }

            h1 {
                font-size: 2em;
            }
        }

        /* Hover effect for rows */
        table tbody tr:hover {
            background-color: #e0f7fa;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Course Management</h1>

        <!-- Add New Course Form -->
        <div class="form-container">
            <div class="card">
                <h3 class="section-title">Add New Course</h3>
                <form action="addCourse.jsp" method="post">
                    <input type="text" name="courseName" placeholder="Course Name" required />
                    <input type="text" name="courseDescription" placeholder="Course Description" required />
                    <input type="text" name="courseCode" placeholder="Course Code" required />
                    <input type="text" name="academicYear" placeholder="Academic Year" required />
                    <input type="text" name="schedule" placeholder="Schedule (e.g. Mon 10:00 AM - 12:00 PM)" required />
                    <button type="submit" class="btn">Add Course</button>
                </form>
            </div>

            <!-- Manage Academic Plans -->
            <div class="card">
                <h3 class="section-title">Manage Academic Plans</h3>
                <button class="btn" onclick="window.location.href='academicPlans.jsp'">Go to Academic Plans</button>
            </div>
        </div>

        <!-- Course List -->
        <div class="section-title">Course List</div>
        <table>
            <thead>
                <tr>
                    <th>Course Name</th>
                    <th>Course Code</th>
                    <th>Academic Year</th>
                    <th>Description</th>
                    <th>Schedule</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example static course entries -->
                <tr>
                    <td>Introduction to Programming</td>
                    <td>CSE101</td>
                    <td>2024-2025</td>
                    <td>Basic programming concepts using Java.</td>
                    <td>Mon 10:00 AM - 12:00 PM</td>
                    <td class="action-btns">
                        <a href="editCourse.jsp?id=1"><i class="fas fa-edit"></i></a>
                        <a href="deleteCourse.jsp?id=1"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>Data Structures</td>
                    <td>CSE102</td>
                    <td>2024-2025</td>
                    <td>Learn about various data structures and their applications.</td>
                    <td>Wed 2:00 PM - 4:00 PM</td>
                    <td class="action-btns">
                        <a href="editCourse.jsp?id=2"><i class="fas fa-edit"></i></a>
                        <a href="deleteCourse.jsp?id=2"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                <!-- More rows can be added dynamically -->
            </tbody>
        </table>
    </div>

</body>

</html>
