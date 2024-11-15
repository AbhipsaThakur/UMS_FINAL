<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Courses</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .hero {
            background-color: #007bff;
            color: white;
            padding: 60px 20px;
            text-align: center;
            position: relative;
        }

        .hero h1 {
            font-size: 2.5rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        .course-card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .course-title {
            font-size: 1.5rem;
            color: #007bff;
        }

        .btn-enroll {
            background-color: yellow;
            color: black;
            transition: background-color 0.3s;
            border: none;
        }

        .btn-enroll:hover {
            background-color: #f0d500;
        }

        .footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>

<body>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Explore Our Courses</h1>
            <p>Join us and elevate your learning experience with diverse courses across various departments.</p>
        </div>
    </section>

    <!-- Courses Section -->
    <section class="courses my-5">
        <div class="container">
            <div class="row">
                <!-- Dynamic Course Cards -->
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Computer Science</h5>
                        <p>Delve into programming, algorithms, and software development.</p>
                        <a href="enrollement.jsp?course=Computer%20Science&description=Delve%20into%20programming,%20algorithms,%20and%20software%20development." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Business Administration</h5>
                        <p>Learn the essentials of management, finance, and marketing.</p>
                        <a href="enrollement.jsp?course=Business%20Administration&description=Learn%20the%20essentials%20of%20management,%20finance,%20and%20marketing." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <!-- More Course Cards -->
                <!-- Repeat same pattern for all courses -->
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 University Management System. All rights reserved.</p>
        </div>
    </footer>

    <!-- JS Dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
