<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mentor-Mentee Schedule</title>
    <style type="text/css">
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e9edf0;
            color: #333;
        }

        /* Container styling */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #4a4a4a;
            font-size: 2em;
            margin-bottom: 25px;
        }

        /* Flexbox grid layout for mentor blocks */
        .schedule-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        /* Mentor block styling */
        .mentor-block {
            flex: 1 1 280px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .mentor-block:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        /* Mentor block header with colored left border */
        .mentor-block h3 {
            margin: 0 0 10px 0;
            color: #4a76a8;
            font-size: 1.25em;
            border-left: 5px solid #4a76a8;
            padding-left: 10px;
        }

        .mentor-block p {
            margin: 5px 0;
            color: #555;
            font-size: 0.95em;
        }

        .mentor-block h4 {
            margin-top: 15px;
            font-size: 1.1em;
            color: #333;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }

        /* Student list styling */
        .student-list {
            list-style-type: none;
            padding: 0;
            max-height: 150px;
            overflow-y: auto;
            border: 1px solid #ddd;
            padding: 10px;
            background-color: #fdfdfd;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .student-list li {
            padding: 6px;
            background-color: #f3f7fb;
            margin: 3px 0;
            border-radius: 4px;
            color: #333;
            font-size: 0.9em;
        }

        .student-list li:nth-child(even) {
            background-color: #e8f0fa;
        }

        .mentor-block:nth-child(odd) {
            background-color: #e0f7fa;
        }

        .mentor-block:nth-child(even) {
            background-color: #fff3e0;
        }

        /* Add hover effect to student list */
        .student-list:hover {
            background-color: #fafafa;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Upcoming Mentor-Mentee Interaction Schedule</h2>
        <div class="schedule-grid">
            <!-- Mentor Blocks with Schedule -->
            <div class="mentor-block">
                <h3>Mentor: Dr. Alice Johnson</h3>
                <p><strong>Next Session:</strong> December 5, 2024</p>
                <p><strong>Time:</strong> 10:00 AM - 12:00 PM</p>
                <p><strong>Location:</strong> Room 101</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student A</li>
                    <li>Student B</li>
                    <li>Student C</li>
                    <li>Student D</li>
                    <li>Student E</li>
                    <li>Student F</li>
                    <li>Student G</li>
                    <li>Student H</li>
                    <li>Student I</li>
                    <li>Student J</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Prof. Brian Smith</h3>
                <p><strong>Next Session:</strong> December 10, 2024</p>
                <p><strong>Time:</strong> 2:00 PM - 4:00 PM</p>
                <p><strong>Location:</strong> Room 102</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student K</li>
                    <li>Student L</li>
                    <li>Student M</li>
                    <li>Student N</li>
                    <li>Student O</li>
                    <li>Student P</li>
                    <li>Student Q</li>
                    <li>Student R</li>
                    <li>Student S</li>
                    <li>Student T</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. Sarah Lee</h3>
                <p><strong>Next Session:</strong> December 15, 2024</p>
                <p><strong>Time:</strong> 9:00 AM - 11:00 AM</p>
                <p><strong>Location:</strong> Room 103</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student U</li>
                    <li>Student V</li>
                    <li>Student W</li>
                    <li>Student X</li>
                    <li>Student Y</li>
                    <li>Student Z</li>
                    <li>Student AA</li>
                    <li>Student AB</li>
                    <li>Student AC</li>
                    <li>Student AD</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. Emma Wilson</h3>
                <p><strong>Next Session:</strong> December 20, 2024</p>
                <p><strong>Time:</strong> 11:00 AM - 1:00 PM</p>
                <p><strong>Location:</strong> Room 104</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student AE</li>
                    <li>Student AF</li>
                    <li>Student AG</li>
                    <li>Student AH</li>
                    <li>Student AI</li>
                    <li>Student AJ</li>
                    <li>Student AK</li>
                    <li>Student AL</li>
                    <li>Student AM</li>
                    <li>Student AN</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Prof. Michael Brown</h3>
                <p><strong>Next Session:</strong> December 25, 2024</p>
                <p><strong>Time:</strong> 3:00 PM - 5:00 PM</p>
                <p><strong>Location:</strong> Room 105</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student AO</li>
                    <li>Student AP</li>
                    <li>Student AQ</li>
                    <li>Student AR</li>
                    <li>Student AS</li>
                    <li>Student AT</li>
                    <li>Student AU</li>
                    <li>Student AV</li>
                    <li>Student AW</li>
                    <li>Student AX</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. John Doe</h3>
                <p><strong>Next Session:</strong> January 1, 2025</p>
                <p><strong>Time:</strong> 8:00 AM - 10:00 AM</p>
                <p><strong>Location:</strong> Room 106</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Student AY</li>
                    <li>Student AZ</li>
                    <li>Student BA</li>
                    <li>Student BB</li>
                    <li>Student BC</li>
                    <li>Student BD</li>
                    <li>Student BE</li>
                    <li>Student BF</li>
                    <li>Student BG</li>
                    <li>Student BH</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
