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
    background: linear-gradient(to right, #25c481, #25b7c4);
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    overflow-x: hidden;
}

.w3-container {
    margin-top: 30px;
}

.w3-bar .w3-button {
    padding: 12px 24px;
    color: white;
    background-color: #0074cc;
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.2s;
    cursor: pointer;
    font-weight: 500;
}

.w3-bar .w3-button:hover {
    background-color: #005fa3;
    transform: scale(1.05);
}

.city {
    padding: 20px;
    display: none;
    transition: opacity 0.5s ease;
}

#Tokyo1 {
    font-family: Arial, sans-serif;
    margin: 20px auto;
    width: 95%;
    max-width: 1200px;
    background: #f9f9f9;
    border-radius: 12px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    overflow: hidden;
    transition: box-shadow 0.3s ease;
}

#Tokyo1:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.tbl-header {
    background-color: #0074cc;
    color: #fff;
    border-top-left-radius: 12px;
    border-top-right-radius: 12px;
    overflow: hidden;
    text-transform: uppercase;
}

.tbl-header table,
.tbl-content table {
    width: 100%;
    table-layout: fixed;
    border-collapse: collapse;
}

.tbl-header th {
    padding: 18px;
    font-weight: 600;
    text-align: center;
    font-size: 16px;
    letter-spacing: 1px;
}

.tbl-content {
    max-height: 400px;
    overflow-y: auto;
    background-color: #ffffff;
    border-bottom-left-radius: 12px;
    border-bottom-right-radius: 12px;
    transition: background-color 0.3s ease;
}

.tbl-content td {
    padding: 14px;
    text-align: center;
    color: #333;
    font-size: 15px;
    border-bottom: 1px solid #ddd;
}

.tbl-content tr {
    transition: background-color 0.2s ease;
}

.tbl-content tr:nth-child(even) {
    background-color: #f7faff;
}

.tbl-content tr:hover {
    background-color: #d1eaff;
}

.tbl-content tr td:last-child {
    color: #0074cc;
    font-weight: 500;
}

.tbl-content::-webkit-scrollbar {
    width: 8px;
}

.tbl-content::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 8px;
}

.tbl-content::-webkit-scrollbar-thumb {
    background-color: #0074cc;
    border-radius: 8px;
    transition: background-color 0.3s;
}

.tbl-content::-webkit-scrollbar-thumb:hover {
    background-color: #005fa3;
}

/* Responsive adjustments */
@media screen and (max-width: 768px) {
    .tbl-header th, .tbl-content td {
        padding: 12px;
        font-size: 14px;
    }
    .tbl-content {
        max-height: 300px;
    }
}

/* Additional styling for better mobile/tablet experience */
@media screen and (max-width: 480px) {
    #Tokyo1 {
        width: 90%;
    }
    .tbl-header th, .tbl-content td {
        font-size: 13px;
        padding: 10px;
    }
}
        /* Footer notes */
        .footer-note {
            text-align: center;
            font-size: 12px;
            margin-top: 20px;
            color: white;
            background-color: black;
        }
        .footer-hr {
            border-top: 1px solid #ddd;
            margin: 15px 0;
            color: white;
        }
    </style>
</head>
<body>
    <img src="img/Screenshot_2024-08-27_000348-removebg-preview.png" align="left" width="100" height="100">

    <div class="w3-container">
        <div class="w3-bar w3-black" style= "margin-top: 30px;">
            <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
            <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
            <a href="logout.jsp" class="w3-bar-item w3-button tablink">Logout</a>
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
    <center><h6>All Rights Reserved © Jagannath University Of Technology And Management</h6></center>
    <hr class="new1">
<br>
   <script>
    function openCity(evt, cityName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("city");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " w3-red";
    }
    // Set default open tab
    document.getElementsByClassName("tablink")[0].click();
</script>


</body>
</html>