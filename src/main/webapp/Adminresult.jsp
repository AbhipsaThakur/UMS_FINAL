<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>DGI</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto:400,500,300,700');
        body {
            background: -webkit-linear-gradient(left, #25c481, #25b7c4);
            background: linear-gradient(to right, #25c481, #25b7c4);
            font-family: 'Roboto', sans-serif;
        }
        .login-box {
            width: 320px;
            height: 450px;
            background: rgba(0, 0, 0, 0.1);
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            padding: 70px 30px;
        }
        .avatar {
            width: 100px;
            height: 100px;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);
        }
        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 22px;
            color: black;
        }
        .login-box p {
            margin: 0;
            padding: 0;
            font-weight: bold;
        }
        .login-box input {
            width: 100%;
            margin-bottom: 20px;
        }
        .login-box input[type="text"], input[type="password"], input[type="number"], input[type="email"] {
            border: none;
            border-bottom: 1px solid black;
            background: transparent;
            outline: none;
            height: 40px;
            color: black;
            font-size: 16px;
        }
        .login-box input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: #1c8adb;
            color: black;
            font-size: 18px;
            border-radius: 20px;
        }
        .login-box input[type="submit"]:hover {
            cursor: pointer;
            background: #39dc79;
            color: #000;
        }
        .login-box a {
            text-decoration: none;
            font-size: 14px;
            color: black;
        }
        .login-box a:hover {
            color: #39dc79;
        }
        h2 {
            color: black;
        }
        /* Container styling for the whole table section */
#Tokyo1 {
    font-family: Arial, sans-serif;
    margin: 20px auto;
    width: 95%;
    max-width: 1200px;
    background: #f5f5f5;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Header section styling */
.tbl-header {
    background-color: #0074cc;
    color: #fff;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    overflow: hidden;
}

/* Table styling */
.tbl-header table,
.tbl-content table {
    width: 100%;
    table-layout: fixed;
}

.tbl-header th {
    padding: 16px;
    font-weight: bold;
    text-align: center;
    font-size: 16px;
    text-transform: uppercase;
}

/* Content section styling */
.tbl-content {
    max-height: 400px; /* Adds scrollability */
    overflow-y: auto;
    background-color: #ffffff;
    border-bottom-left-radius: 8px;
    border-bottom-right-radius: 8px;
}

.tbl-content td {
    padding: 12px;
    text-align: center;
    color: #333;
    font-size: 15px;
    border-bottom: 1px solid #ddd;
}

/* Alternate row background */
.tbl-content tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Hover effect for table rows */
.tbl-content tr:hover {
    background-color: #d1eaff;
}

/* Responsive adjustments */
@media screen and (max-width: 768px) {
    .tbl-header th, .tbl-content td {
        padding: 10px;
        font-size: 14px;
    }
    .tbl-content {
        max-height: 300px;
    }
}
        
        
    </style>
</head>
<body>
    <img src="Screenshot_2024-08-27_000348-removebg-preview.png" align="left" width="100" height="100">
    <center>
        <img src="dgi.png" width="100" height="100">
        <img src="apj sir.png" align="right" width="100" height="100">
    </center>

    <div class="w3-container">
        <div class="w3-bar w3-black">
            <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
            <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
        </div>

        <!-- Add New Student Form -->
        <div id="London" class="w3-container w3-border city">
            <br>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

            <main class="my-form">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">Add New Students</div>
                                <div class="card-body">
                                    <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                                        <div class="form-group row">
                                            <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="course">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="branch">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="rollNo">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="fatherName">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="gender">
                                            </div>
                                        </div>
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        </div>

        <!-- Insert New Result Form -->
        <div id="Paris" class="w3-container w3-border city" style="display:none">
            <br>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

            <main class="my-form">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">Insert New Result</div>
                                <div class="card-body">
                                    <form name="my-form" onsubmit="return validform()" action="inserNewResult.jsp" method="">
                                        <div class="form-group row">
                                            <label for="full_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="rollNo">
                                            </div>
                                        </div>
                                        <!-- Add the result fields here -->
                                        <!-- Example: -->
                                        <div class="form-group row">
                                            <label for="subject1" class="col-md-4 col-form-label text-md-right">Engg. Physics-I</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Physics">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Engg. Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="Chemistry">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Engg. Mathematics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="Mathematics">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Basic Electrical Engg</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="Electrical">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Electronic Engg.</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="Electronic">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Chemistry Lab</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="ChemistryLab">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Physics Lab</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="PhysicsLab">
                                    </div>
                                </div>
                                
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        </div>
        <div id="Tokyo" class="w3-container w3-border city" style="display:none">
    <section>
        <!-- Table header for Registered Students -->
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                    <tr>
                        <th>Course Name</th>
                        <th>Branch Name</th>
                        <th>Roll Number</th>
                        <th>Name</th>
                        <th>Father Name</th>
                        <th>Gender</th>
                    </tr>
                </thead>
            </table>
        </div>
       <%@page import="java.sql.*" %>
<%@page import="result.ConnectionProvider" %>

<div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
        <tbody>
            <%
                try {
                    Connection con = ConnectionProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from addstudentresult");

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getString(1) %></td> <!-- Replace with actual column names -->
                            <td><%= rs.getString(2) %></td>
                            <td><%= rs.getString(3) %></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
                            <td><%= rs.getString(6) %></td>
                        </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </tbody>
    </table>
</div>
       </section>
       </div>
       <div id="Tokyo1" class="w3-container w3-border city" style="display:none">
    <section>
        <!--for demo wrap-->
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                    <tr>
                        <th>Roll Number</th>
                        <th>Engg. Physics-I</th>
                        <th>Engg. Chemistry</th>
                        <th>Engg. Mathematics-I</th>
                        <th>Basic Electrical Engg</th>
                        <th>Electronic Engg.</th>
                        <th>Engg. Chemistry Lab</th>
                        <th>Engg. Physics Lab</th>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0">
                <tbody>
                    <%@ page import="java.sql.*" %>
                    <%@ page import="result.ConnectionProvider" %>
                    <%
                        Connection con = null;
                        Statement st = null;
                        ResultSet rs = null;
                        try {
                            con = ConnectionProvider.getCon();
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM result");

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println("<p>Error: " + e.getMessage() + "</p>");
                        } finally {
                            if (rs != null) try { rs.close(); } catch (SQLException e) { out.println("Error closing ResultSet: " + e.getMessage()); }
                            if (st != null) try { st.close(); } catch (SQLException e) { out.println("Error closing Statement: " + e.getMessage()); }
                            if (con != null) try { con.close(); } catch (SQLException e) { out.println("Error closing Connection: " + e.getMessage()); }
                        }
                    %>
                </tbody>
            </table>
        </div>
    </section>
</div>
       
       
    <hr class="new1">
  <center><h5>Note: Any errors occur then contact BTech Days.
Designed & Developed by BTech Days Team</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ BTech Days :: 2015-2020</h5></center> 
  <hr class="new1">
<br>
   <script>
function openCity(event, cityName) {
    const tabcontent = document.getElementsByClassName("city");
    for (let i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    document.getElementById(cityName).style.display = "block";
    const tablinks = document.getElementsByClassName("tablink");
    for (let i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
    }
    event.currentTarget.className += " w3-red";
}

// Set default open tab
document.addEventListener("DOMContentLoaded", () => {
    document.getElementsByClassName("tablink")[0].click();
});
</script>
   
    
</body>
</html>
