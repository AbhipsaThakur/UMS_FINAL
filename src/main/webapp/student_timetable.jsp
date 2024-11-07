<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timetable | University Management System</title>

    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #2196F3, #42A5F5, #90CAF9);
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
            font-size: 32px;
            font-weight: 700;
            position: relative;
        }

        h1::after {
            content: '';
            width: 80px;
            height: 4px;
            background-color: #2196F3;
            display: block;
            margin: 10px auto 0;
            border-radius: 2px;
        }

        /* Timetable Styles */
        .timetable-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 40px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .timetable-table th, .timetable-table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .timetable-table th {
            background-color: #1976D2;
            color: white;
            font-size: 18px;
            text-transform: uppercase;
        }

        .timetable-table td {
            background-color: #f9f9f9;
            color: #333;
            font-size: 16px;
        }

        .timetable-table tr:hover td {
            background-color: #f1f1f1;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .timetable-table th, .timetable-table td {
                font-size: 14px;
                padding: 10px;
            }

            h1 {
                font-size: 26px;
            }

            .container {
                padding: 15px;
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>Department Timetable</h1>
        
        <!-- Timetable Table -->
        <table class="timetable-table">
            <thead>
                <tr>
                    <th>Day</th>
                    <th>9:00 - 10:00 AM</th>
                    <th>10:00 - 11:00 AM</th>
                    <th>11:00 - 12:00 PM</th>
                    <th>1:00 - 2:00 PM</th>
                    <th>2:00 - 3:00 PM</th>
                    <th>3:00 - 4:00 PM</th>
                </tr>
            </thead>
            <tbody>
                <!-- Monday Timetable -->
                <tr>
                    <td>Monday</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td>Placement Training/Job Readiness</td>
                    <td>Advanced Java<br>ST C, D R - 404<br>Rakesh K Ray</td>
                    <td>Advanced Java<br>ST C, D R - 404<br>Rakesh K Ray</td>
                    <td>BT + BSC</td>
                </tr>
                <!-- Tuesday Timetable -->
                <tr>
                    <td>Tuesday</td>
                    <td>Spring Boot<br>ST D R - 406 408<br>Bishnupada Kamila</td>
                    <td>Placement Training/Job Readiness</td>
                    <td></td>
                    <td>Angular<br>ST D R - 408 311<br>Rakesh K Ray</td>
                    <td>Angular<br>ST D R - 408 311<br>Rakesh K Ray</td>
                    <td></td>
                </tr>
                <!-- Wednesday Timetable -->
                <tr>
                    <td>Wednesday</td>
                    <td>Android App Development<br>ST D R - 401 311<br>Rasmi P Swain</td>
                    <td>Android App Development<br>ST D R - 401 311<br>Rasmi P Swain</td>
                    <td>Android App Development<br>ST D R - 311<br>Rasmi P Swain</td>
                    <td>Placement Training/Job Readiness</td>
                    <td>Angular<br>ST D R - 408<br>Rakesh K Ray</td>
                    <td>Skill Course / Job Readiness</td>
                </tr>
                <!-- Thursday Timetable -->
                <tr>
                    <td>Thursday</td>
                    <td>Angular<br>ST D R - 408 303<br>Rakesh K Ray</td>
                    <td>Angular<br>ST D R - 408 303<br>Rakesh K Ray</td>
                    <td>Placement Training/Job Readiness</td>
                    <td>Android App Development<br>ST D R - 408<br>Rasmi P Swain</td>
                    <td>Android App Development<br>ST D R - 408<br>Rasmi P Swain</td>
                    <td></td>
                </tr>
                <!-- Friday Timetable -->
                <tr>
                    <td>Friday</td>
                    <td>Advanced Java<br>ST C, D R - 404<br>Rakesh K Ray</td>
                    <td>Advanced Java<br>ST C, D R - 404<br>Rakesh K Ray</td>
                    <td>Advanced Java<br>ST C, D R - 404<br>Rakesh K Ray</td>
                    <td>Spring Boot<br>ST D R - 406 301<br>Bishnupada Kamila</td>
                    <td>Spring Boot<br>ST D R - 406 301<br>Bishnupada Kamila</td>
                    <td>Skill Course / Job Readiness</td>
                </tr>
                <!-- Saturday Timetable -->
                <tr>
                    <td>Saturday</td>
                    <td></td>
                    <td>Product Development<br>ST D R - 408<br>Rakesh K Ray</td>
                    <td>Product Development<br>ST D R - 408<br>Rakesh K Ray</td>
                    <td></td>
                    <td>Android App Development<br>ST D R - 408 301<br>Rasmi P Swain</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
