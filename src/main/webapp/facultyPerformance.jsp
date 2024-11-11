<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%@page import="feedback.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Performance</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            margin: 20px 0;
            font-size: 2em;
        }

        /* Container for the content */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 1.1em;
        }

        th {
            background-color: #4a90e2;
            color: white;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        td {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
        }

        /* Table Row Hover Effect */
        tr:hover {
            background-color: #e6f4ff;
            cursor: pointer;
        }

        /* Alternate Row Colors */
        tr:nth-child(even) td {
            background-color: #fafafa;
        }

        /* Footer Styles */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #4a90e2;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        /* Responsive Table for Mobile Devices */
        @media (max-width: 768px) {
            table {
                font-size: 0.9em;
            }

            th, td {
                padding: 10px;
            }
        }

        /* Loading Spinner */
        .loading {
            display: none;
            text-align: center;
            margin-top: 50px;
        }

        .loading img {
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Faculty Performance</h1>
        <div class="loading">
            <img src="https://i.imgur.com/llF5iyg.gif" alt="Loading..."> <!-- You can replace this with your own loading GIF -->
        </div>
        <table id="facultyTable">
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
    </div>

    <footer>
        <p>&copy; 2024 University. All rights reserved.</p>
    </footer>

    <script>
        // Simulating a delay for the loading spinner
        window.addEventListener("load", function() {
            setTimeout(function() {
                document.querySelector(".loading").style.display = "none";  // Hide loading spinner
                document.getElementById("facultyTable").style.display = "table";  // Show table
            }, 1000); // Delay in milliseconds
        });
    </script>
</body>
</html>
