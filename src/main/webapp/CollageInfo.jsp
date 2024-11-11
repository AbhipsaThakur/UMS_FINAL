<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Information</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
            color: #333;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        header {
            text-align: center;
            margin-bottom: 40px;
            color: #007bff;
            font-weight: bold;
        }

        header h1 {
            font-size: 36px;
            letter-spacing: 2px;
            color: #333;
            transition: color 0.3s ease;
        }

        header h1:hover {
            color: #007bff;
        }

        .section {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
            padding: 30px;
            transition: transform 0.2s ease-in-out;
        }

        .section:hover {
            transform: scale(1.02);
        }

        h2 {
            font-size: 26px;
            margin-bottom: 20px;
            color: #007bff;
            display: flex;
            align-items: center;
        }

        h2 i {
            margin-right: 10px;
            color: #ff6347;
        }

        p {
            font-size: 18px;
            line-height: 1.8;
            color: #666;
        }

        footer {
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
        }

        footer p {
            font-size: 16px;
        }

        /* Add subtle animations */
        .section, header h1, footer p {
            animation: fadeIn 1.5s ease-in;
        }

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

        /* Responsive Layout */
        @media (max-width: 768px) {
            .section {
                padding: 20px;
            }

            h2 {
                font-size: 22px;
            }

            p {
                font-size: 15px;
            }
        }

        /* Button style for interactive features */
        .btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #ff6347;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #ff4500;
        }

    </style>
</head>
<body>
    <header>
        <h1>College Information</h1>
    </header>

    <main class="container">
        <section id="structure" class="section">
            <h2><i class="fas fa-building"></i> Structure</h2>
            <p>The "Structure" section provides an in-depth look at the organizational layout of the college. It includes the physical and administrative divisions within the institution, such as buildings, departments, and facilities. This section might include information on the campus layout, the hierarchy of different academic and non-academic departments, the division of faculties, as well as the roles and responsibilities of various administrative bodies. Additionally, it can offer insights into how the college functions at the institutional level, showcasing its operational framework and providing clarity on how resources, infrastructure, and services are organized to support student and staff needs. Understanding the structure is crucial for students, faculty, and staff alike, as it helps them navigate the campus, identify key departments, and find resources relevant to their academic or administrative needs.</p>
            <a href="#structure" class="btn">Read More</a>
        </section>

        <section id="rooms" class="section">
            <h2><i class="fas fa-door-open"></i> Rooms</h2>
            <p>The "Rooms" section offers a comprehensive listing of classrooms, lecture halls, seminar rooms, and other specialized spaces within the college campus. This section includes important details such as room numbers, locations, seating capacities, and their intended purposes. It may also provide information about multimedia or technical facilities available in the rooms, such as projectors, microphones, or computers for presentations. For students, the "Rooms" section is an essential tool to quickly locate their classes and other academic events. For staff, it helps them manage room assignments for courses and other activities. This section can also integrate a booking or reservation system, enabling users to schedule rooms for meetings, events, or seminars, ensuring efficient space management on campus.</p>
            <a href="#rooms" class="btn">Read More</a>
        </section>

        <section id="department" class="section">
            <h2><i class="fas fa-chalkboard-teacher"></i> Department</h2>
            <p>The "Department" section highlights the various academic and administrative departments within the college. It covers both teaching departments, such as the Department of Computer Science, English, or Mathematics, and non-teaching departments, like the Registrar's Office, Library, and Student Affairs. This section might offer detailed information about each department, including the staff, faculty members, their qualifications, and the programs they offer. It can also include departmental achievements, research outputs, and any ongoing projects or events hosted by the departments. For students, this section provides an overview of where they can find support for their academic queries, as well as what courses and programs are available in each department. Faculty members can use it to understand the institutional structure, contact details for fellow educators, and administrative procedures related to their department.</p>
            <a href="#department" class="btn">Read More</a>
        </section>

        <section id="performance" class="section">
            <h2><i class="fas fa-graduation-cap"></i> Performance Grades</h2>
            <p>The "Performance Grades" section is dedicated to tracking the academic progress of students...</p>
            <a href="#performance" class="btn">Read More</a>
        </section>

        <section id="programs" class="section">
            <h2><i class="fas fa-cogs"></i> Programs</h2>
            <p>The "Performance Grades" section is dedicated to tracking the academic progress of students throughout their time at the college. It might include access to midterm and final grades, as well as overall GPA calculations. This section can allow students to monitor their academic performance, compare their grades over time, and identify areas where they may need improvement. For instructors, it can serve as a tool for recording and sharing student assessments, including project grades, exam results, and assignments. This section could also include helpful resources for academic improvement, such as tutoring services, workshops, or counseling. Moreover, it could offer personalized feedback or recommendations to help students meet their academic goals.</p>
            <a href="#programs" class="btn">Read More</a>
        </section>

        <section id="registration" class="section">
            <h2><i class="fas fa-pen"></i> Registration</h2>
            <p>The "Registration" section handles the enrollment process for students, allowing them to sign up for courses, manage their course load, and update their personal information. This section simplifies the registration process by offering a user-friendly interface where students can choose electives, select required courses, and view available schedules. It can also integrate functionalities like course drop/add, waitlist management, and prerequisites tracking. Students can use this section to ensure they are enrolled in the correct courses for their academic progression. For administrative staff, it acts as a central hub to manage student registrations, process course availability, and provide updates regarding class schedules and changes.</p>
            <a href="#registration" class="btn">Read More</a>
        </section>

        <section id="calendar" class="section">
            <h2><i class="fas fa-calendar"></i> Calendar</h2>
            <p>The "Calendar" section presents a dynamic and interactive academic calendar that includes important dates such as the start and end of semesters, holiday breaks, examination periods, and registration deadlines. This section helps students stay organized and plan their academic schedules effectively. In addition to academic events, the calendar can include college-wide events like sports days, cultural festivals, workshops, and guest lectures. By providing a centralized overview of all key events and deadlines, this section serves as an invaluable tool for both students and staff to ensure that they don’t miss important academic or extracurricular activities.</p>
            <a href="#calendar" class="btn">Read More</a>
        </section>

        <section id="certificates" class="section">
            <h2><i class="fas fa-certificate"></i> Certificates</h2>
            <p>The "Certificates" section provides students with access to various academic and administrative certificates issued by the college. These may include degree certificates, transcript requests, diploma verifications, or certificates of participation in specific programs or courses. This section allows students to apply for, track, and download their certificates, making it easier for them to obtain necessary documentation for career opportunities, further studies, or personal records. For staff and faculty, the section can include administrative tools to approve and issue certificates, track requests, and maintain records of certificates issued to students. This section helps streamline the certification process and ensures that students receive their credentials in a timely and efficient manner.</p>
            <a href="#certificates" class="btn">Read More</a>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Jagannath University Of Technology And Management</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>