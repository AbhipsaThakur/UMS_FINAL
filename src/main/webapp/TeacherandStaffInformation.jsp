<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teacher and Staff Information</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .branch-header {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1.5em;
            margin-top: 30px;
            border-radius: 5px;
        }
        .teacher-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .teacher-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease;
        }
        .teacher-card:hover {
            transform: translateY(-10px);
        }
        .teacher-card img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 15px;
        }
        .teacher-card h3 {
            font-size: 1.2em;
            color: #333;
        }
        .teacher-card p {
            color: #666;
        }
        .teacher-card .branch {
            color: #007bff;
            font-weight: bold;
        }
        .teacher-card a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .teacher-card a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Teacher and Staff Information</h1>

    <!-- MCA Branch -->
    <div class="branch-header">MCA Teachers</div>
    <div class="teacher-list">
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Dr. Rajesh Kumar</h3>
            <p class="branch">MCA</p>
            <p>Data Structures, Algorithms, Web Development</p>
        </div>
        <!-- Add more teachers -->
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Prof. Anjali Sharma</h3>
            <p class="branch">MCA</p>
            <p>Operating Systems, Compiler Design</p>
        </div>
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Prof. Muktikant Dash</h3>
            <p class="branch">MCA</p>
            <p>Advanced Java</p>
        </div>
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Prof. Debolina Behera</h3>
            <p class="branch">MCA</p>
            <p>Core Java</p>
        </div>
    </div>

    <!-- BCA Branch -->
    <div class="branch-header">BCA Teachers</div>
    <div class="teacher-list">
        <div class="teacher-card">
            <img src="img/5.jpeg" alt="Teacher Image">
            <h3>Dr. Ramesh Gupta</h3>
            <p class="branch">BCA</p>
            <p>Database Management, Web Development</p>
        </div>
        <!-- Add more teachers -->
        <div class="teacher-card">
            <img src="img/3.jpeg" alt="Teacher Image">
            <h3>Prof. Priya Desai</h3>
            <p class="branch">BCA</p>
            <p>Computer Networks, Programming in Java</p>
        </div>
        <div class="teacher-card">
            <img src="img/6.png" alt="Teacher Image">
            <h3>Prof. Sourav Desai</h3>
            <p class="branch">BCA</p>
            <p>c++</p>
        </div>
        <div class="teacher-card">
            <img src="img/7.jpeg" alt="Teacher Image">
            <h3>Prof. Rajesh Prusty</h3>
            <p class="branch">BCA</p>
            <p>MERN STACK</p>
        </div>
    </div>

    <!-- Engineering Branch -->
    <div class="branch-header">Engineering Teachers</div>
    <div class="teacher-list">
        <div class="teacher-card">
            <img src="img/8.jpeg" alt="Teacher Image">
            <h3>Dr. Vinay Singh</h3>
            <p class="branch">Computer Science</p>
            <p>Operating Systems, Compiler Design</p>
        </div>
        <div class="teacher-card">
            <img src="img/1.jpeg" alt="Teacher Image">
            <h3>Prof. Sunita Yadav</h3>
            <p class="branch">Mechanical Engineering</p>
            <p>Thermodynamics, Heat Transfer</p>
        </div>
        <div class="teacher-card">
            <img src="img/2.jpeg" alt="Teacher Image">
            <h3>Prof. Hemanta Bisi</h3>
            <p class="branch">Computer Science Engineering</p>
            <p>Programming In C</p>
        </div>
        <div class="teacher-card">
            <img src="img/4.jpeg" alt="Teacher Image">
            <h3>Prof. SK Afsar Ali</h3>
            <p class="branch">Computer Science</p>
            <p>Mathematical Problem Solving</p>
        </div>
        <div class="teacher-card">
            <img src="img/7.jpeg" alt="Teacher Image">
            <h3>Prof. Amit Sahoo</h3>
            <p class="branch">Mechanical Engineering</p>
            <p>Optics And Optical Fiber</p>
        </div>
        <div class="teacher-card">
            <img src="img/9.jpeg" alt="Teacher Image">
            <h3>Prof. Sunil Yadav</h3>
            <p class="branch">Mechanical Engineering</p>
            <p>Basic Electrical Engeneering</p>
        </div>
    </div>

    <!-- Law Branch -->
    <div class="branch-header">Law Teachers</div>
    <div class="teacher-list">
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Dr. Manoj Pandey</h3>
            <p class="branch">Law</p>
            <p>Constitutional Law, Legal Writing</p>
        </div>
        <div class="teacher-card">
            <img src="img/avatar.svg" alt="Teacher Image">
            <h3>Prof. Geeta Verma</h3>
            <p class="branch">Law</p>
            <p>Criminal Law, Legal Theory</p>
        </div>
        <!-- Continue adding more teachers (total 25) for Law -->
    </div>

</div>

</body>
</html>
