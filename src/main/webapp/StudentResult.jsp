<%@page import="result.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
   try {
       String rollNo = request.getParameter("rollNo");
       Connection con = ConnectionProvider.getCon();
       PreparedStatement ps = con.prepareStatement(
           "SELECT * FROM addstudentresult "
           + "INNER JOIN result ON addstudentresult.rollNo = result.rollNo "
           + "WHERE addstudentresult.rollNo = ?"
       );
       ps.setString(1, rollNo);
       ResultSet rs = ps.executeQuery();

       if (rs.next()) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Report</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

        /* Basic styling */
        body {
            background: linear-gradient(45deg, #004d7a, #00b4db);
            font-family: 'Montserrat', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }
        h6 {
            font-size: 14px;
            color: #555;
        }

        /* Header styling */
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            background-color: #003f5c;
        }
        .logo {
            width: 80px;
            height: auto;
        }
        .logo-center {
            width: 120px;
            height: auto;
        }
        .btn-back {
            color: #e09;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s;
            font-size: 14px;
            padding: 10px 15px;
            background-color: #003f5c;
            border-radius: 5px;
        }
        .btn-back:hover {
            color: #01FFFF;
        }

        /* Print button styling */
        .btn-print {
            cursor: pointer;
            padding: 5px 10px;
            background: #e09;
            color: white;
            border: none;

        }
        .btn-print:hover {
            background:  #003f5c;
        }

        /* Container styling */
        .container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f7f9fb;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background: #005f8b;
            color: white;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
        }
        td {
            background: #f1f4f9;
            color: #333;
        }
        tbody tr:nth-child(even) td {
            background: #e9eef4;
        }

        /* Footer notes */
        .footer-note {
            text-align: center;
            font-size: 12px;
            margin-top: 20px;
            color: white;
        }
        .footer-hr {
            border-top: 1px solid #ddd;
            margin: 15px 0;
            color: white;
        }

        /* Logo section */
        .logo-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .logo-left, .logo-right {
            width: 80px;
            height: auto;
        }
        .logo-center {
            width: 120px;
            height: auto;
        }
    </style>
</head>
<body>
     <!-- Logo Section -->
    <div class="logo-container">
        <img src="img/Screenshot_2024-08-27_000348-removebg-preview.png" class="logo-center" style="margin-right:20px;">
    </div>

    <!-- Header Table -->
    <div class="tbl-header">
        <table>
            <thead>
                <tr>
                    <th>Institution Name: DGI</th>
                    <th>Course Name:<%= rs.getString(1) %></th>
                    <th>Branch Name:<%= rs.getString(2) %></th>
                    <th>Roll No: <%= rs.getString(3) %></th>
                </tr>
                <tr>
                    <th>Name: <%= rs.getString(4) %></th>
                    <th>Father's Name: <%= rs.getString(5) %></th>
                    <th>Gender: <%= rs.getString(6) %></th>
                    <th>
                        <a title="Print screen" onclick="window.print();" class="btn-print">
                            <img src="img/print.png" alt="Print" width="24" height="24">
                        </a>
                    </th>
                </tr>
            </thead>
        </table>
    </div>
    
    <hr class="new1">

    <!-- Main Table for Marks -->
    <table>
        <thead>
            <tr>
                <td colspan="3">Course</td>
                <td rowspan="2">Type</td>
                <td rowspan="2">Full Marks</td>
                <td rowspan="2">Passing Marks</td>
                <td rowspan="2">Obtained Marks</td>
            </tr>
            <tr>
                <td>Code</td>
                <td colspan="2">Name</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>NAS101</td>
                <td colspan="2">Engg. Physics-I</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td><%= rs.getString(8) %></td>
            </tr>
            <tr>
                <td>NAS102</td>
                <td colspan="2">Engg. Chemistry</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td><%= rs.getString(9) %></td>
            </tr>
            <tr>
                <td>NAS103</td>
                <td colspan="2">Engg. Mathematics-I</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td><%= rs.getString(10) %></td>
            </tr>
            <tr>
                <td>NEE101</td>
                <td colspan="2">Basic Electrical Engg.</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td><%= rs.getString(11) %></td>
            </tr>
            <tr>
                <td>NEC101</td>
                <td colspan="2">Electronic Engg.</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td><%= rs.getString(12) %></td>
            </tr>
            <tr>
                <td>NAS152</td>
                <td colspan="2">Engg. Chemistry Lab</td>
                <td>Practical</td>
                <td>30</td>
                <td>15</td>
                <td><%= rs.getString(13) %></td>
            </tr>
            <tr>
                <td>NAS151</td>
                <td colspan="2">Engg. Physics Lab</td>
                <td>Practical</td>
                <td>30</td>
                <td>15</td>
                <td><%= rs.getString(14) %></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4" class="footer">Total Marks</td>
                <td>560</td>
                <td>180</td>
                <td><%= rs.getInt(8) + rs.getInt(9) + rs.getInt(10) + rs.getInt(11) + rs.getInt(12) + rs.getInt(13) + rs.getInt(14) %></td>
            </tr>
            <tr>
                <td colspan="4" class="footer">Percentage</td>
                <td colspan="3"><%= ((rs.getInt(8) + rs.getInt(9) + rs.getInt(10) + rs.getInt(11) + rs.getInt(12) + rs.getInt(13) + rs.getInt(14)) * 100) / 560 %></td>
            </tr>
        </tfoot>
    </table>
    <hr class="new1">
    <center><h6>All Rights Reserved © Jagannath University Of Technology And Management</h6></center>
    <hr class="new1">
</body>
<%
       } else {
    	   response.sendRedirect("dgioneview.jsp");
       }
       rs.close();
       ps.close();
       con.close();
   } catch (Exception e) {
       e.printStackTrace();
   }
%>
</html>
