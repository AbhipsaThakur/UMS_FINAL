<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>University Admission Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            max-width: 600px;
            width: 100%;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header img {
            max-width: 150px; /* Adjust size as needed */
            margin-bottom: 10px;
        }
        .header h1 {
            font-size: 1.5em;
            color: #333;
            margin: 0;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-group input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-weight: bold;
            border: none;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">
        <img src="img/Screenshot_2024-08-27_000348-removebg-preview.png" alt="University Logo">
        <h1>Jagannath University of Technology and Management, BBSR</h1>
    </div>
    <form action="AdmissionServlet" method="post">
        <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" required>
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" required>
        </div>
        <div class="form-group">
            <label for="program">Program of Interest</label>
            <select id="program" name="program" required>
                <option value="">Select Program</option>
                <%
                    String[] courses = {"BSc Computer Science", "BA English", "BCom Accounting", "BSc Mathematics", 
                        "BBA", "BCA", "BA History", "BSc Physics", "BSc Chemistry", "BSc Biology",
                        "BA Psychology", "BSc Geology", "BSc Statistics", "BPharm", "BArch", 
                        "LLB", "BA Economics", "BA Sociology", "BSc Environmental Science", 
                        "BEd", "BSc Agriculture", "BDes", "BPT", "BA Political Science", "BSc Microbiology"};
                    for (String course : courses) {
                %>
                    <option value="<%= course %>"><%= course %></option>
                <%
                    }
                %>
            </select>
        </div>
        <div class="form-group">
            <label for="blood_group">Blood Group</label>
            <select id="blood_group" name="blood_group" required>
                <option value="">Select Blood Group</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
        </div>
        <div class="form-group">
            <label>Gender</label>
            <label><input type="radio" name="gender" value="Male" required> Male</label>
            <label><input type="radio" name="gender" value="Female"> Female</label>
            <label><input type="radio" name="gender" value="Other"> Other</label>
        </div>
        <div class="form-group">
            <label>Accommodation</label>
            <label><input type="radio" name="accommodation" value="Hosteler" required> Hosteler</label>
            <label><input type="radio" name="accommodation" value="Day Scholar"> Day Scholar</label>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <textarea id="address" name="address" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="contact">Emergency Contact Number</label>
            <input type="tel" id="contact" name="contact" required>
        </div>
        <div class="form-group">
            <label for="payment">Payment Method</label>
            <select id="payment" name="payment" required>
                <option value="">Select Payment Method</option>
                <option value="Credit Card">Credit Card</option>
                <option value="Debit Card">Debit Card</option>
                <option value="Net Banking">Net Banking</option>
                <option value="UPI">UPI</option>
                <option value="Cash">Cash</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" value="Submit Application">
        </div>
    </form>
</div>

</body>
</html>
