<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
        }

        .logout-message {
            text-align: center;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            opacity: 0;
            transform: translateY(-20px);
            animation: fadeInMove 1s forwards;
        }

        .logout-message h2 {
            font-size: 28px;
            color: #4a90e2;
        }

        .logout-message p {
            font-size: 16px;
            color: #333;
        }

        .redirect-message {
            font-size: 14px;
            margin-top: 15px;
            opacity: 0;
            animation: fadeIn 2s forwards 1s;
        }

        @keyframes fadeInMove {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }
    </style>
    <meta http-equiv="refresh" content="3;url=index.jsp" />
</head>
<body>
    <div class="logout-message">
        <h2>You have been successfully logged out.</h2>
        <p>Thank you for using our system.</p>

        <p class="redirect-message">
            Redirecting you to the login page in a few seconds... <br>
            If you're not redirected, <a href="index.jsp">click here</a>.
        </p>
    </div>
</body>
</html>
