<!DOCTYPE html>
<html>
<head>
    <title>University Management System - Employee Directory</title>
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

        /* Department and Role Styling */
        .department, .role {
            background-color: #1e90ff; /* Primary blue color */
            color: #fff;
            padding: 10px 15px;
            margin: 5px 0;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold;
        }
        .department:hover, .role:hover {
            background-color: #5a9fd7; /* Lighter blue for hover */
        }

        /* Employee List Styling */
        #employeeList {
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
            #employeeList {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>University Management System - Employee Directory</h2>

    <!-- Departments List -->
    <div id="departments">
        <h3>Select Department</h3>
        <div class="department" onclick="showRoles('Administration')">Administration</div>
        <div class="department" onclick="showRoles('Teaching')">Teaching</div>
        <div class="department" onclick="showRoles('Support')">Support</div>
    </div>

    <!-- Roles List -->
    <div id="roles" style="display: none;">
        <h3 id="departmentTitle">Roles</h3>
        <div class="role" onclick="showEmployees('Manager')">Manager</div>
        <div class="role" onclick="showEmployees('Assistant')">Assistant</div>
        <div class="role" onclick="showEmployees('Technician')">Technician</div>
        <div class="role" onclick="showEmployees('Professor')">Professor</div>
        <div class="role" onclick="showEmployees('Librarian')">Librarian</div>
    </div>

    <!-- Employee List -->
    <div id="employeeList" style="display: none;">
        <div>
            <h3>Employees</h3>
            <ul id="employees">
                <!-- Employees will be populated here -->
            </ul>
        </div>
    </div>
</div>

<script>
// JavaScript to simulate data and interactions

const employees = {
    "Administration": {
        "Manager": ["Rajesh Patel", "Nitin Mehta"],
        "Assistant": ["Aditi Sharma", "Praveen Kumar"]
    },
    "Teaching": {
        "Professor": ["Dr. Anjali Verma", "Dr. Prakash Rao"],
        "Assistant": ["Dr. Neha Gupta"]
    },
    "Support": {
        "Technician": ["Kiran Nair", "Harish Nair"],
        "Librarian": ["Sanya Naik"]
    }
};

function showRoles(department) {
    document.getElementById('departmentTitle').innerText = `Roles in ${department}`;
    document.getElementById('roles').style.display = 'block';
    document.getElementById('employeeList').style.display = 'none';
    document.getElementById('roles').setAttribute('data-department', department);
}

function showEmployees(role) {
    const department = document.getElementById('roles').getAttribute('data-department');
    const employeeList = employees[department][role] || [];
    
    // Populate Employees
    const employeeUl = document.getElementById('employees');
    employeeUl.innerHTML = '';
    employeeList.forEach(employee => {
        const li = document.createElement('li');
        li.innerText = employee;
        employeeUl.appendChild(li);
    });

    document.getElementById('employeeList').style.display = 'block';
}
</script>

</body>
</html>
