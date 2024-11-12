<!DOCTYPE html>
<html>
<head>
    <title>University Management System - Student List</title>
    <style>
        /* Basic Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h2 {
            text-align: center;
            color: #1e90ff; /* Changed to a blue color */
        }
        
        /* Container Styling */
        .container {
            width: 80%;
            max-width: 800px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Year and Section Styling */
        .year, .section {
            background-color: #1e90ff; /* Primary blue color */
            color: #fff;
            padding: 10px 15px;
            margin: 5px 0;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold;
        }
        .year:hover, .section:hover {
            background-color: #5a9fd7; /* Lighter blue for hover */
        }

        /* Student and Subject List Styling */
        #studentSubjectList {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
        }
        
        li {
            background-color: #f0f8ff; /* Light blue background for list items */
            margin: 5px 0;
            padding: 8px;
            border-radius: 5px;
            color: #333;
            font-weight: 500;
        }
        
        li:hover {
            background-color: #e6f2ff; /* Even lighter blue on hover */
        }
        
        /* Titles */
        h3 {
            margin-bottom: 10px;
            color: #1e90ff; /* Consistent blue for titles */
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            #studentSubjectList {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>University Management System - Teacher Dashboard</h2>

    <!-- Years List -->
    <div id="years">
        <h3>Select Academic Year</h3>
        <div class="year" onclick="showSections('Year1')">Year 1</div>
        <div class="year" onclick="showSections('Year2')">Year 2</div>
        <div class="year" onclick="showSections('Year3')">Year 3</div>
        <div class="year" onclick="showSections('Year4')">Year 4</div>
    </div>

    <!-- Sections List -->
    <div id="sections" style="display: none;">
        <h3 id="yearTitle">Sections</h3>
        <div class="section" onclick="showStudents('SectionA')">Section A</div>
        <div class="section" onclick="showStudents('SectionB')">Section B</div>
    </div>

    <!-- Student and Subject List -->
    <div id="studentSubjectList" style="display: none;">
        <div>
            <h3>Students</h3>
            <ul id="students">
                <!-- Students will be populated here -->
            </ul>
        </div>
        
        <div>
            <h3>Subjects</h3>
            <ul id="subjects">
                <!-- Subjects will be populated here -->
            </ul>
        </div>
    </div>
</div>

<script>
// JavaScript to simulate data and interactions

const students = {
    "Year1": {
        "SectionA": ["Aarav Patel", "Advika Sharma", "Chirag Joshi", "Dhruv Desai", "Ishita Iyer", "Kabir Verma", "Leena Mishra", "Meera Rao", "Nitin Mehta", "Prisha Bhatt"],
        "SectionB": ["Rahul Shah", "Sakshi Gupta", "Tanvi Kulkarni", "Vikram Bansal", "Anika Sen", "Harish Nair", "Ira Prasad", "Jai Dixit", "Karan Malhotra", "Lina Vaidya"]
    },
    "Year2": {
        "SectionA": ["Manav Joshi", "Nidhi Sharma", "Ojas Deshmukh", "Parul Thakur", "Rajeev Reddy", "Sanya Kaul", "Tara Saxena", "Uday Rao", "Veer Kulkarni", "Yash Mehta"],
        "SectionB": ["Zoya Khan", "Aryan Chawla", "Bhavna Nair", "Chandan Rao", "Deepak Ahuja", "Esha Ghosh", "Farhan Kapoor", "Gauri Banerjee", "Hemant Jain", "Ipsita Rane"]
    },
    "Year3": {
        "SectionA": ["Jay Patel", "Kajal Mehta", "Lakshya Desai", "Manasi Varma", "Nikhil Chaturvedi", "Omkara Nanda", "Priya Sen", "Raghav Kulkarni", "Seema Sinha", "Tushar Shah"],
        "SectionB": ["Urvashi Reddy", "Varun Kapoor", "Yamini Iyer", "Arjun Singh", "Bhumi Jain", "Chinmay Tiwari", "Diya Malhotra", "Eklavya Prasad", "Firoz Naidu", "Gulati Singh"]
    },
    "Year4": {
        "SectionA": ["Harish Nair", "Indira Chopra", "Jeet Sharma", "Kiran Patil", "Lavanya Desai", "Madhav Sharma", "Nisha Banerjee", "Omkar Reddy", "Pallavi Deshmukh", "Rishi Nanda"],
        "SectionB": ["Sanya Naik", "Tanay Saxena", "Usha Singh", "Vinay Kulkarni", "Yogesh Prasad", "Arushi Rao", "Bhavesh Mehra", "Charu Gupta", "Divya Roy", "Ekta Ghosh"]
    }
};

const subjects = {
    "Year1": ["Basic Electrical Engineering", "Gender Equality", "C programming", "DBMS", "Data Visualization using python"],
    "Year2": ["Probability and staticstic", "Data Structures", "java Techonology", "Machine learnig using python"],
    "Year3": ["Operating Systems", "Database Management", "Software Engineering", "Networks"],
    "Year4": ["Machine Learning", "Big Data", "Artificial Intelligence", "Cloud Computing"]
};

function showSections(year) {
    document.getElementById('yearTitle').innerText = `Sections for ${year}`;
    document.getElementById('sections').style.display = 'block';
    document.getElementById('studentSubjectList').style.display = 'none';
    document.getElementById('sections').setAttribute('data-year', year);
}

function showStudents(section) {
    const year = document.getElementById('sections').getAttribute('data-year');
    const studentList = students[year][section] || [];
    const subjectList = subjects[year] || [];
    
    // Populate Students
    const studentUl = document.getElementById('students');
    studentUl.innerHTML = '';
    studentList.forEach(student => {
        const li = document.createElement('li');
        li.innerText = student;
        studentUl.appendChild(li);
    });
    
    // Populate Subjects
    const subjectUl = document.getElementById('subjects');
    subjectUl.innerHTML = '';
    subjectList.forEach(subject => {
        const li = document.createElement('li');
        li.innerText = subject;
        subjectUl.appendChild(li);
    });

    document.getElementById('studentSubjectList').style.display = 'flex';
}
</script>

</body>
</html>
