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
        /* Import Google Fonts */
        @import url('https://fonts.googleapis.com/css?family=Roboto:400,500,300,700');

        /* Basic styling */
        body {
            background: linear-gradient(to right, #25c481, #25b7c4);
            font-family: 'Roboto', sans-serif;
            color: black;
        }
        h6 {
            font-size: 14px;
            margin: 10px 0;
        }

        /* Header image styling */
        img {
            vertical-align: middle;
        }
        .logo-left {
            float: left;
            width: 150px;
            height: 150px;
        }
        .logo-center {
            display: inline-block;
            width: 150px;
            height: 150px;
        }
        .logo-right {
            float: right;
            width: 150px;
            height: 150px;
        }

        /* Styling for main content */
        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }
        th, td {
            padding: 15px;
            text-align: center;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }
        th {
            font-size: 12px;
            text-transform: uppercase;
            font-weight: 500;
            color: #fff;
            background: #625D5D;
        }
        tbody tr:nth-child(odd) {
            background: #D1D0CE;
        }
        .footer {
            font-weight: bold;
            text-align: right;
        }
        .btn-print {
            cursor: pointer;
        }

        /* Styling for hr separator */
        .new1 {
            border: 1px solid #000;
        }
    </style>
</head>
<body>
    <!-- Logo Images -->
    <img src="logo.png" class="logo-left">
    <center><img src="img/Screenshot_2024-08-27_000348-removebg-preview.png" class="logo-center"></center>
    <img src="apj sir.png" class="logo-right">

    <a href="dgiOneView.html">Back</a>
    <hr class="new1">

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
    
    <!-- Footer Notes -->
    <center>
        <h6>Note: Institution doesn't hold responsibility for errors or omissions in this statement.<br>
        Designed & Developed by BTech Days Team</h6>
    </center>
    <hr class="new1">
    <center><h6>All Rights Reserved © BTech Days 2015-2020</h6></center>
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
