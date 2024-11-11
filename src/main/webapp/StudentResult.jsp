<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <center><img src="dgi.png" class="logo-center"></center>
    <img src="apj sir.png" class="logo-right">

    <a href="dgiOneView.html">Back</a>
    <hr class="new1">

    <!-- Header Table -->
    <div class="tbl-header">
        <table>
            <thead>
                <tr>
                    <th>Institution Name: DGI</th>
                    <th>Course Name: B.Tech</th>
                    <th>Branch Name: Computer Science</th>
                    <th>Roll No: 10025</th>
                </tr>
                <tr>
                    <th>Name: Gaurav Kumar</th>
                    <th>Father's Name: Sunil Kumar</th>
                    <th>Gender: Male</th>
                    <th>
                        <a title="Print screen" onclick="window.print();" class="btn-print">
                            <img src="print.png" alt="Print" width="24" height="24">
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
                <td>80</td>
            </tr>
            <tr>
                <td>NAS102</td>
                <td colspan="2">Engg. Chemistry</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td>98</td>
            </tr>
            <tr>
                <td>NAS103</td>
                <td colspan="2">Engg. Mathematics-I</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td>75</td>
            </tr>
            <tr>
                <td>NEE101</td>
                <td colspan="2">Basic Electrical Engg.</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td>85</td>
            </tr>
            <tr>
                <td>NEC101</td>
                <td colspan="2">Electronic Engg.</td>
                <td>Theory</td>
                <td>100</td>
                <td>30</td>
                <td>99</td>
            </tr>
            <tr>
                <td>NAS152</td>
                <td colspan="2">Engg. Chemistry Lab</td>
                <td>Practical</td>
                <td>30</td>
                <td>15</td>
                <td>20</td>
            </tr>
            <tr>
                <td>NAS151</td>
                <td colspan="2">Engg. Physics Lab</td>
                <td>Practical</td>
                <td>30</td>
                <td>15</td>
                <td>21</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4" class="footer">Total Marks</td>
                <td>560</td>
                <td>180</td>
                <td>450</td>
            </tr>
            <tr>
                <td colspan="4" class="footer">Percentage</td>
                <td colspan="3">80%</td>
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
</html>
