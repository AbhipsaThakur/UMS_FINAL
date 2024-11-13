<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Student Results</title>
  <style>
    /* Global Styles */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background-color: #f3f8fc;
      color: #333;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* Header Styles */
    header {
      background-color: #0077b6;
      color: #fff;
      padding: 20px 10%;
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
    }

    header h1 {
      font-size: 28px;
      font-weight: 700;
      transition: transform 0.3s ease;
    }

    header h1:hover {
      transform: scale(1.05);
    }

    header nav ul {
      list-style-type: none;
      display: flex;
    }

    header nav li {
      margin-left: 20px;
    }

    header nav a {
      color: #fff;
      text-decoration: none;
      font-size: 16px;
      font-weight: 600;
      padding: 8px 12px;
      border-radius: 4px;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    header nav a:hover {
      background-color: #005b8c;
      color: #e6e6e6;
    }

    /* Main Content Styles */
    .main-content {
      width: 90%;
      max-width: 1200px;
      margin-top: 30px;
    }

    .card {
      background-color: #ffffff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      padding: 30px;
      margin-bottom: 30px;
      transition: box-shadow 0.3s ease;
    }

    .card:hover {
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card h2 {
      font-size: 24px;
      font-weight: 600;
      color: #0077b6;
      margin-bottom: 20px;
    }

    /* Table Styles */
    .result-table {
      width: 100%;
      border-collapse: collapse;
      font-size: 16px;
    }

    .result-table th,
    .result-table td {
      padding: 12px 16px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    .result-table th {
      background-color: #0077b6;
      color: #fff;
      position: sticky;
      top: 0;
      z-index: 1;
    }

    .result-table tbody tr {
      transition: background-color 0.3s ease;
    }

    .result-table tbody tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    .result-table tbody tr:hover {
      background-color: #e0f0ff;
    }

    /* Button Styles */
    .btn {
      display: inline-block;
      background-color: #0077b6;
      color: #fff;
      padding: 8px 16px;
      border-radius: 6px;
      text-decoration: none;
      font-size: 14px;
      font-weight: 600;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn:hover {
      background-color: #005b8c;
      transform: scale(1.05);
    }

    @media (max-width: 768px) {
      header nav ul {
        flex-direction: column;
        align-items: flex-end;
      }

      .result-table th,
      .result-table td {
        padding: 10px;
        font-size: 14px;
      }

      .btn {
        padding: 6px 12px;
        font-size: 12px;
      }
    }
  </style>
</head>
<body>
  <header>
    <h1>Admin Student Results</h1>
    <nav>
      <ul>
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Students</a></li>
        <li><a href="#">Results</a></li>
        <li><a href="#">Settings</a></li>
      </ul>
    </nav>
  </header>

  <div class="main-content">
    <div class="card">
      <h2>Student Results</h2>
      <table class="result-table">
        <thead>
          <tr>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Physics</th>
            <th>Chemistry</th>
            <th>Maths</th>
            <th>Electrical</th>
            <th>Electronics</th>
            <th>Physics Lab</th>
            <th>Chemistry Lab</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="result-tbody">
          <!-- JavaScript will populate the table here -->
        </tbody>
      </table>
    </div>
  </div>

  <script>
    const studentResults = [
      {
        rollNumber: '001',
        name: 'John Doe',
        physics: 85,
        chemistry: 78,
        maths: 92,
        electrical: 80,
        electronics: 85,
        physicsLab: 90,
        chemistryLab: 85
      },
      {
        rollNumber: '002',
        name: 'Jane Smith',
        physics: 90,
        chemistry: 82,
        maths: 88,
        electrical: 75,
        electronics: 92,
        physicsLab: 85,
        chemistryLab: 88
      }
    ];

    function populateResultTable() {
      const resultTbody = document.getElementById('result-tbody');

      studentResults.forEach((student) => {
        const row = document.createElement('tr');

        for (let key in student) {
          const cell = document.createElement('td');
          cell.textContent = student[key];
          row.appendChild(cell);
        }

        const actionsCell = document.createElement('td');
        const viewBtn = document.createElement('a');
        viewBtn.href = '#';
        viewBtn.textContent = 'View';
        viewBtn.classList.add('btn');
        actionsCell.appendChild(viewBtn);
        row.appendChild(actionsCell);

        resultTbody.appendChild(row);
      });
    }

    populateResultTable();
  </script>
</body>
</html>
