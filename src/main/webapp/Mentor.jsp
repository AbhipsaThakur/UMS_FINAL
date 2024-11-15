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
                <h3>Mentor: Dr. Ravi Kumar</h3>
                <p><strong>Next Session:</strong> December 5, 2024</p>
                <p><strong>Time:</strong> 10:00 AM - 12:00 PM</p>
                <p><strong>Location:</strong> Room 101</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Aarav Patel</li>
                    <li>Advit Sharma</li>
                    <li>Ashwin Yadav</li>
                    <li>Diya Singh</li>
                    <li>Devika Mehta</li>
                    <li>Iqra Khan</li>
                    <li>Himanshu Verma</li>
                    <li>Priya Joshi</li>
                    <li>Shivani Gupta</li>
                    <li>Mohit Choudhary</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Prof. Neha Desai</h3>
                <p><strong>Next Session:</strong> December 10, 2024</p>
                <p><strong>Time:</strong> 2:00 PM - 4:00 PM</p>
                <p><strong>Location:</strong> Room 102</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Rohit Kumar</li>
                    <li>Ayaan Malik</li>
                    <li>Meera Kapoor</li>
                    <li>Kavya Sharma</li>
                    <li>Riya Soni</li>
                    <li>Tarun Bansal</li>
                    <li>Raghav Joshi</li>
                    <li>Deepika Rani</li>
                    <li>Anushka Gupta</li>
                    <li>Varun Joshi</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. Sandeep Yadav</h3>
                <p><strong>Next Session:</strong> December 15, 2024</p>
                <p><strong>Time:</strong> 9:00 AM - 11:00 AM</p>
                <p><strong>Location:</strong> Room 103</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Suman Kumari</li>
                    <li>Rajat Kumar</li>
                    <li>Amit Yadav</li>
                    <li>Vikram Singh</li>
                    <li>Shruti Verma</li>
                    <li>Ravindra Pandey</li>
                    <li>Soniya Chaudhary</li>
                    <li>Pranav Singh</li>
                    <li>Anjali Verma</li>
                    <li>Kritika Soni</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. Aarti Verma</h3>
                <p><strong>Next Session:</strong> December 20, 2024</p>
                <p><strong>Time:</strong> 11:00 AM - 1:00 PM</p>
                <p><strong>Location:</strong> Room 104</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Ayushi Sethi</li>
                    <li>Siddhi Sharma</li>
                    <li>Akash Patel</li>
                    <li>Anuj Bhardwaj</li>
                    <li>Simran Kaur</li>
                    <li>Yogesh Kumar</li>
                    <li>Nandini Gupta</li>
                    <li>Sonal Mehta</li>
                    <li>Manisha Chaudhary</li>
                    <li>Pooja Rani</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Prof. Rahul Joshi</h3>
                <p><strong>Next Session:</strong> December 25, 2024</p>
                <p><strong>Time:</strong> 3:00 PM - 5:00 PM</p>
                <p><strong>Location:</strong> Room 105</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Parul Shah</li>
                    <li>Ravindra Saini</li>
                    <li>Mehul Joshi</li>
                    <li>Karan Bhatt</li>
                    <li>Ankush Kapoor</li>
                    <li>Chirag Singh</li>
                    <li>Sarita Soni</li>
                    <li>Sahil Kumar</li>
                    <li>Harshita Chaudhary</li>
                    <li>Rajendra Kumar</li>
                </ul>
            </div>

            <div class="mentor-block">
                <h3>Mentor: Dr. Vikram Sharma</h3>
                 <p><strong>Next Session:</strong> January 1, 2025</p>
                <p><strong>Time:</strong> 8:00 AM - 10:00 AM</p>
                <p><strong>Location:</strong> Room 106</p>
                <h4>Students</h4>
                <ul class="student-list">
                    <li>Shivendra Tiwari</li>
                    <li>Aman Rathi</li>
                    <li>Sonali Patil</li>
                    <li>Snehal Verma</li>
                    <li>Sumit Rathi</li>
                    <li>Vishal Yadav</li>
                    <li>Priti Pandey</li>
                    <li>Vikash Soni</li>
                    <li>Shubham Bansal</li>
                    <li>Shikha Mehta</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
