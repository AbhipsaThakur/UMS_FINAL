<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Question Bank</title>
  <style>
    /* Basic styling */
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f0f0f0;
      color: #444;
    }

    .container {
      width: 80%;
      margin: 30px auto;
    }

    header {
      text-align: center;
      margin-bottom: 30px;
    }

    h1 {
      color: #4CAF50;
      font-size: 36px;
      margin-bottom: 10px;
    }

    .form-section, .table-section {
      background-color: #fff;
      padding: 30px;
      margin-bottom: 30px;
      border-radius: 10px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    }

    h2 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-size: 16px;
    }

    input[type="text"], select {
      width: 100%;
      padding: 12px;
      margin: 10px 0 20px;
      border: 2px solid #ddd;
      border-radius: 6px;
      font-size: 16px;
      box-sizing: border-box;
      transition: border-color 0.3s ease;
    }

    input[type="text"]:focus, select:focus {
      border-color: #4CAF50;
      outline: none;
    }

    button {
      padding: 12px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #45a049;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 30px;
    }

    table, th, td {
      border: 1px solid #ddd;
    }

    th, td {
      padding: 15px;
      text-align: left;
      font-size: 16px;
    }

    th {
      background-color: #f1f1f1;
    }

    td button {
      background-color: #f44336;
      color: white;
      border: none;
      padding: 8px 15px;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    td button:hover {
      background-color: #d32f2f;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
      .container {
        width: 90%;
      }

      h1 {
        font-size: 28px;
      }

      h2 {
        font-size: 20px;
      }

      button {
        width: 100%;
        padding: 15px;
      }

      input[type="text"], select {
        width: 100%;
      }

      table {
        font-size: 14px;
      }
    }
  </style>
</head>
<body>

  <div class="container">
    <header>
      <h1>Question Bank - University Management System</h1>
    </header>

    <div class="form-section">
      <h2>Add New Question</h2>
      <form id="questionForm">
        <label for="questionText">Question:</label>
        <input type="text" id="questionText" placeholder="Enter the question text" required><br>

        <label for="questionCourse">Course:</label>
        <input type="text" id="questionCourse" placeholder="Enter the course name" required><br>

        <label for="questionLevel">Difficulty Level:</label>
        <select id="questionLevel" required>
          <option value="easy">Easy</option>
          <option value="medium">Medium</option>
          <option value="hard">Hard</option>
        </select><br>

        <button type="submit">Add Question</button>
      </form>
    </div>

    <div class="table-section">
      <h2>Question Bank</h2>
      <table id="questionsTable">
        <thead>
          <tr>
            <th>Question</th>
            <th>Course</th>
            <th>Difficulty</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <!-- Question data will be displayed here -->
        </tbody>
      </table>
    </div>
  </div>

  <script>
    // JavaScript to handle form submission and table updates

    document.getElementById('questionForm').addEventListener('submit', function (event) {
      event.preventDefault(); // Prevent the form from submitting

      const questionText = document.getElementById('questionText').value;
      const questionCourse = document.getElementById('questionCourse').value;
      const questionLevel = document.getElementById('questionLevel').value;

      if (questionText && questionCourse && questionLevel) {
        // Create a new row for the table
        const table = document.getElementById('questionsTable').getElementsByTagName('tbody')[0];
        const newRow = table.insertRow();

        const questionCell = newRow.insertCell(0);
        const courseCell = newRow.insertCell(1);
        const levelCell = newRow.insertCell(2);
        const actionCell = newRow.insertCell(3);

        questionCell.textContent = questionText;
        courseCell.textContent = questionCourse;
        levelCell.textContent = questionLevel;

        // Add a delete button to the last cell
        const deleteButton = document.createElement('button');
        deleteButton.textContent = 'Delete';
        deleteButton.onclick = function () {
          table.deleteRow(newRow.rowIndex - 1);
        };

        actionCell.appendChild(deleteButton);

        // Clear the form inputs
        document.getElementById('questionForm').reset();
      } else {
        alert('Please fill in all fields.');
      }
    });
  </script>
</body>
</html>
