<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Assignment Page</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #4CAF50;
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
    
    
</head>
<body>
    <h2>Available Assignments</h2>
    <table border="1">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Due Date</th>
            <th>Download PDF</th>
        </tr>
        <%
            String dbURL = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
            String dbUser = "root";
            String dbPass = "1111";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

                String sql = "SELECT title, description, due_date, pdf_file_path FROM assignments";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next()) {
                    String title = rs.getString("title");
                    String description = rs.getString("description");
                    Date dueDate = rs.getDate("due_date");
                    String pdfFilePath = rs.getString("pdf_file_path");
        %>
        <tr>
            <td><%= title %></td>
            <td><%= description %></td>
            <td><%= dueDate %></td>
            <td><a href="<%= request.getContextPath() + "/" + pdfFilePath %>" download>Download PDF</a></td>
        </tr>
        <%
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </table>
</body>
</html>
