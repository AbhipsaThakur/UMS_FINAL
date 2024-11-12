<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Dashboard - Question Bank</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Basic Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
            color: #333;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff;
        }

        /* Department and Add Question Form */
        .filter-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .filter-container select, .filter-container button {
            padding: 10px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        /* Question Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #f9f9f9;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td {
            background-color: #f1f1f1;
        }

        .action-btns a {
            margin: 0 8px;
            color: #007bff;
            text-decoration: none;
            font-size: 1.2em;
        }

        .action-btns a:hover {
            color: #0056b3;
        }

        /* Add Question Form */
        .form-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 20px;
        }

        .form-container input, .form-container textarea {
            padding: 12px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-container button {
            background-color: #28a745;
            color: white;
            padding: 12px 25px;
            font-size: 1em;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container button:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .filter-container {
                flex-direction: column;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Faculty Dashboard - Question Bank</h1>

        <!-- Filter by Department -->
        <div class="filter-container">
            <select id="departmentSelect">
                <option value="all">Select Department</option>
                <option value="computerScience">Computer Science</option>
                <option value="electronics">Electronics</option>
                <option value="mechanical">Mechanical</option>
                <option value="civil">Civil Engineering</option>
            </select>
            <button onclick="filterQuestions()">Filter Questions</button>
        </div>

        <!-- Add Question Form -->
        <div class="form-container">
            <h3>Add New Question</h3>
            <input type="text" id="questionTitle" placeholder="Enter Question Title" />
            <textarea id="questionDescription" placeholder="Enter Question Description"></textarea>
            <input type="text" id="questionAnswer" placeholder="Enter Answer" />
            <select id="questionDepartment">
                <option value="computerScience">Computer Science</option>
                <option value="electronics">Electronics</option>
                <option value="mechanical">Mechanical</option>
                <option value="civil">Civil Engineering</option>
            </select>
            <button onclick="addQuestion()">Add Question</button>
        </div>

        <!-- Question Table -->
        <h3>Questions List</h3>
        <table id="questionTable">
            <thead>
                <tr>
                    <th>Question</th>
                    <th>Answer</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamic content will be inserted here -->
            </tbody>
        </table>
    </div>

    <script>
        // Sample question data
        let questions = [
            { title: "What is Java?", description: "Explain Java programming language.", answer: "Java is a high-level programming language.", department: "computerScience" },
            { title: "What is Ohm's Law?", description: "State and explain Ohm's Law.", answer: "V = IR", department: "electronics" },
            { title: "Define Work and Energy.", description: "Explain the relationship between work and energy.", answer: "Work done is energy transferred.", department: "mechanical" }
        ];

        // Function to render the questions in the table
        function renderQuestions() {
            const tableBody = document.getElementById('questionTable').getElementsByTagName('tbody')[0];
            tableBody.innerHTML = ''; // Clear the table
            questions.forEach((question, index) => {
                const row = tableBody.insertRow();
                row.innerHTML = `
                    <td>${question.title}</td>
                    <td>${question.answer}</td>
                    <td>${question.department}</td>
                    <td class="action-btns">
                        <a href="editQuestion.jsp?id=${index}"><i class="fas fa-edit"></i></a>
                        <a href="deleteQuestion.jsp?id=${index}" onclick="deleteQuestion(${index})"><i class="fas fa-trash-alt"></i></a>
                    </td>
                `;
            });
        }

        // Function to add a new question
        function addQuestion() {
            const title = document.getElementById('questionTitle').value;
            const description = document.getElementById('questionDescription').value;
            const answer = document.getElementById('questionAnswer').value;
            const department = document.getElementById('questionDepartment').value;

            if (title && description && answer) {
                // Add new question to the array
                questions.push({ title, description, answer, department });

                // Clear the form inputs
                document.getElementById('questionTitle').value = '';
                document.getElementById('questionDescription').value = '';
                document.getElementById('questionAnswer').value = '';
                document.getElementById('questionDepartment').value = 'computerScience';

                // Re-render the questions in the table
                renderQuestions();
            } else {
                alert("Please fill all fields.");
            }
        }

        // Function to filter questions by department
        function filterQuestions() {
            const department = document.getElementById('departmentSelect').value;
            const filteredQuestions = department === 'all' ? questions : questions.filter(q => q.department === department);
            renderFilteredQuestions(filteredQuestions);
        }

        // Function to render filtered questions
        function renderFilteredQuestions(filteredQuestions) {
            const tableBody = document.getElementById('questionTable').getElementsByTagName('tbody')[0];
            tableBody.innerHTML = ''; // Clear the table
            filteredQuestions.forEach((question, index) => {
                const row = tableBody.insertRow();
                row.innerHTML = `
                    <td>${question.title}</td>
                    <td>${question.answer}</td>
                    <td>${question.department}</td>
                    <td class="action-btns">
                        <a href="editQuestion.jsp?id=${index}"><i class="fas fa-edit"></i></a>
                        <a href="deleteQuestion.jsp?id=${index}" onclick="deleteQuestion(${index})"><i class="fas fa-trash-alt"></i></a>
                    </td>
                `;
            });
        }

        // Function to delete a question
        function deleteQuestion(index) {
            if (confirm("Are you sure you want to delete this question?")) {
                questions.splice(index, 1); // Remove the question from the array
                renderQuestions(); // Update the question table
            }
        }

        // Initialize the table with sample questions
        renderQuestions();
    </script>

</body>
</html>
