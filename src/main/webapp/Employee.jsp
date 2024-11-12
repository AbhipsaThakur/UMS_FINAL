<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Management System - Employees</title>
    <style>
        /* Basic Styling */
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
            color: #1e90ff;
        }
        
        /* Container */
        .container {
            width: 80%;
            max-width: 900px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Department Buttons */
        .department {
            background-color: #1e90ff;
            color: #fff;
            padding: 10px 15px;
            margin: 5px 0;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold;
        }
        .department:hover {
            background-color: #5a9fd7;
        }

        /* Employee and Department List */
        #employeeList {
            margin-top: 20px;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
        }
        
        li {
            background-color: #f0f8ff;
            margin: 5px 0;
            padding: 8px;
            border-radius: 5px;
            color: #333;
            font-weight: 500;
        }
        
        li:hover {
            background-color: #e6f2ff;
        }
        
        /* Titles */
        h3 {
            margin-bottom: 10px;
            color: #1e90ff;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            #employeeList {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>University Management System - Employees</h2>

    <!-- Departments List -->
    <div id="departments">
        <h3>Select Department</h3>
        <div class="department" onclick="showEmployees('Administration')">Administration</div>
        <div class="department" onclick="showEmployees('Teaching')">Teaching</div>
        <div class="department" onclick="showEmployees('SupportStaff')">Support Staff</div>
    </div>

    <!-- Employee List -->
    <div id="employeeList" style="display: none;">
        <h3 id="departmentTitle">Employees in Department</h3>
        <ul id="employees">
            <!-- Employees will be populated here -->
        </ul>
    </div>
</div>

<script>
// Wait until the DOM is fully loaded before running the script
document.addEventListener("DOMContentLoaded", function() {
    const employees = {
        "Administration": [
            { name: "Rajesh Patel", role: "Registrar" },
            { name: "Aditi Sharma", role: "Assistant Registrar" },
            { name: "Nitin Mehta", role: "Accountant" },
            { name: "Sneha Joshi", role: "HR Manager" },
            { name: "Ramesh Kumar", role: "Finance Manager" },
            { name: "Sanjay Bhatia", role: "Legal Advisor" },
            { name: "Kavita Rao", role: "Compliance Officer" },
            { name: "Sunil Bhardwaj", role: "Administrative Coordinator" },
            { name: "Jyoti Kapoor", role: "Procurement Officer" },
            { name: "Manoj Deshmukh", role: "Payroll Officer" },
            { name: "Vikas Tiwari", role: "Public Relations Manager" },
            { name: "Anjana Chauhan", role: "Event Coordinator" },
            { name: "Pankaj Singh", role: "Records Manager" },
            { name: "Reena Saxena", role: "Assistant Compliance Officer" },
            { name: "Alok Agarwal", role: "Facilities Manager" }
        ],
        "Teaching": [
            { name: "Dr. Anjali Verma", role: "Professor, Computer Science" },
            { name: "Dr. Prakash Rao", role: "Professor, Mathematics" },
            { name: "Dr. Neha Gupta", role: "Assistant Professor, Physics" },
            { name: "Mr. Vijay Reddy", role: "Lecturer, English" },
            { name: "Dr. Meera Sen", role: "Professor, Economics" },
            { name: "Dr. Ravi Chaturvedi", role: "Associate Professor, Chemistry" },
            { name: "Ms. Pooja Narayan", role: "Lecturer, History" },
            { name: "Dr. Akash Nanda", role: "Professor, Biology" },
            { name: "Ms. Swati Kapoor", role: "Assistant Professor, Statistics" }
        ],
        "SupportStaff": [
            { name: "Kiran Nair", role: "Librarian" },
            { name: "Praveen Kumar", role: "Lab Assistant" },
            { name: "Rekha Singh", role: "Office Assistant" },
            { name: "Ravi Chawla", role: "Maintenance Head" },
            { name: "Sunita Desai", role: "Receptionist" },
            { name: "Anil Agarwal", role: "Technical Support" },
            { name: "Manju Rawat", role: "Groundskeeper" },
            { name: "Mahesh Sharma", role: "Cafeteria Staff" }
        ]
    };

    function showEmployees(department) {
        console.log(`Showing employees for ${department}`);
        
        const departmentTitle = document.getElementById('departmentTitle');
        departmentTitle.innerText = `Employees in ${department}`;
        
        const employeeUl = document.getElementById('employees');
        employeeUl.innerHTML = ''; // Clear previous list

        if (!employees[department]) {
            console.error(`Department '${department}' not found`);
            return;
        }

        employees[department].forEach(employee => {
            const li = document.createElement('li');
            li.innerText = `${employee.name} - ${employee.role}`;
            employeeUl.appendChild(li);
        });

        document.getElementById('employeeList').style.display = 'block';
    }

    window.showEmployees = showEmployees; // Expose the function to global scope
});
</script>

</body>
</html>
