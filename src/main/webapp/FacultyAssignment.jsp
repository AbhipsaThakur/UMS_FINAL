<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Assignment Page</title>
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        h2 {
            color: #2c3e50;
            font-size: 1.8em;
            text-align: center;
            margin-bottom: 20px;
        }
        /* Container Styling */
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="date"],
        input[type="file"],
        textarea {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            color: #333;
        }
        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="file"]:focus,
        textarea:focus {
            border-color: #3498db;
            outline: none;
        }
        textarea {
            resize: vertical;
            font-family: Arial, sans-serif;
        }
        /* Submit Button Styling */
        input[type="submit"] {
            margin-top: 20px;
            padding: 12px;
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create a New Assignment</h2>
        <form action="FacultyAssignmentServlet" method="post" enctype="multipart/form-data">
            <label for="title">Assignment Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" cols="50" required></textarea>

            <label for="dueDate">Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <label for="pdfFile">Upload PDF File:</label>
            <input type="file" id="pdfFile" name="pdfFile" accept="application/pdf" required>

            <input type="submit" value="Submit Assignment">
        </form>
    </div>
</body>
</html>
