<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enrollement</title>
</head>
<body>
     div class="container">
        <div class="header">
            <h1>Enrollment Details</h1>
            <p>Complete your enrollment by providing the necessary information.</p>
        </div>
    <div class="card p-4">
            <h4>Course Information</h4>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Subject Name</th>
                        <th>Duration (Years)</th>
                        <th>Subject Fee</th>
                        <th>Hostel Fee</th>
                        <th>Tuition Fee</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Computer Science</td>
                        <td>4</td>
                        <td>$4000</td>
                        <td>$2000</td>
                        <td>$3000</td>
                    </tr>
                    <tr>
                        <td>Business Administration</td>
                        <td>3</td>
                        <td>$3500</td>
                        <td>$1800</td>
                        <td>$2500</td>
                    </tr>
                    <tr>
                        <td>Engineering</td>
                        <td>4</td>
                        <td>$4500</td>
                        <td>$2200</td>
                        <td>$3200</td>
                    </tr>
                    <tr>
                        <td>Psychology</td>
                        <td>3</td>
                        <td>$3500</td>
                        <td>$1800</td>
                        <td>$2500</td>
                    </tr>
                    <tr>
                        <td>Nursing</td>
                        <td>4</td>
                        <td>$4000</td>
                        <td>$2000</td>
                        <td>$3000</td>
                    </tr>
                    <tr>
                        <td>Education</td>
                        <td>3</td>
                        <td>$3000</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Economics</td>
                        <td>3</td>
                        <td>$3200</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Art and Design</td>
                        <td>3</td>
                        <td>$2800</td>
                        <td>$1500</td>
                        <td>$2300</td>
                    </tr>
                    <tr>
                        <td>Biology</td>
                        <td>3</td>
                        <td>$3000</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Physics</td>
                        <td>3</td>
                        <td>$3200</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                </tbody>
              </table>
              <h4>Enrollment Form</h4>
            <form action="submitEnrollment.jsp" method="post">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required>
                </div>
      </div>        

</body>
</html>