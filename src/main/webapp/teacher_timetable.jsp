<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Timetable | University Management System</title>

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #673AB7, #9575CD, #D1C4E9);
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
            background-color: #673AB7;
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
            background-color: #512DA8;
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

        /* Teacher Highlights */
        .highlight {
            background-color: #D1C4E9;
            font-weight: bold;
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
        <h1>Teacher Timetable</h1>
        
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
                    <td class="highlight">Data Science<br>ST A R - 302<br>Rakesh K Ray</td>
                    <td class="highlight">Advanced Java<br>ST C R - 404<br>Rakesh K Ray</td>
                    <td>Placement Training<br>ST C R - 401<br>Bishnupada Kamila</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td>Python Basics<br>ST B R - 303<br>Rasmi P Swain</td>
                </tr>
                <!-- Tuesday Timetable -->
                <tr>
                    <td>Tuesday</td>
                    <td class="highlight">Networking<br>ST D R - 408<br>Rakesh K Ray</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td>Placement Training<br>ST C R - 404<br>Rakesh K Ray</td>
                    <td class="highlight">Angular<br>ST D R - 311<br>Rakesh K Ray</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td class="highlight">AI Basics<br>ST A R - 301<br>Rakesh K Ray</td>
                </tr>
                <!-- Wednesday Timetable -->
                <tr>
                    <td>Wednesday</td>
                    <td>Android App Dev<br>ST D R - 401<br>Rasmi P Swain</td>
                    <td>Spring Boot<br>ST C R - 404<br>Bishnupada Kamila</td>
                    <td class="highlight">Data Structures<br>ST B R - 303<br>Rakesh K Ray</td>
                    <td>Machine Learning<br>ST D R - 408<br>Rakesh K Ray</td>
                    <td>Angular<br>ST A R - 303<br>Bishnupada Kamila</td>
                    <td>Project Work<br>ST B R - 311<br>Rasmi P Swain</td>
                </tr>
                <!-- Thursday Timetable -->
                <tr>
                    <td>Thursday</td>
                    <td class="highlight">AI Development<br>ST D R - 402<br>Rakesh K Ray</td>
                    <td class="highlight">Angular<br>ST D R - 303<br>Rakesh K Ray</td>
                    <td>Android App Dev<br>ST C R - 404<br>Rasmi P Swain</td>
                    <td class="highlight">Python Fundamentals<br>ST A R - 303<br>Rakesh K Ray</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td>Health Informatics<br>ST C R - 310<br>Rakesh K Ray</td>
                </tr>
                <!-- Friday Timetable -->
                <tr>
                    <td>Friday</td>
                    <td class="highlight">Machine Learning<br>ST D R - 404<br>Rakesh K Ray</td>
                    <td>Advanced Java<br>ST C R - 404<br>Bishnupada Kamila</td>
                    <td class="highlight">Network Security<br>ST A R - 303<br>Rakesh K Ray</td>
                    <td>Spring Boot<br>ST D R - 406<br>Bishnupada Kamila</td>
                    <td class="highlight">Angular<br>ST C R - 404<br>Rakesh K Ray</td>
                    <td>Project Guidance<br>ST B R - 311<br>Rasmi P Swain</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
    