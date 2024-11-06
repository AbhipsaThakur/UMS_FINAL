<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Form</title>
</head>
<body> 
    <div class="feedback-container">
    <h1>Faculty Feedback Form</h1>
    <form action="FeedbackServlet" method="post">
        <!-- Faculty 1 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 1">
                <div>
                    <h3>Prof. Rakesh Ray</h3>
                    <span>Subject: Advanced Java (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-1" name="rating1" value="5"><label for="star5-1">★</label>
                <input type="radio" id="star4-1" name="rating1" value="4"><label for="star4-1">★</label>
                <input type="radio" id="star3-1" name="rating1" value="3"><label for="star3-1">★</label>
                <input type="radio" id="star2-1" name="rating1" value="2"><label for="star2-1">★</label>
                <input type="radio" id="star1-1" name="rating1" value="1"><label for="star1-1">★</label>
            </div>
            <label for="feedback1">Your Thoughts:</label>
            <textarea id="feedback1" name="feedback1" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>
        <!-- Faculty 2 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 2">
                <div>
                    <h3>Prof. Rashmi Prakash Swain</h3>
                    <span>Subject: Android App Development (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-2" name="rating2" value="5"><label for="star5-2">★</label>
                <input type="radio" id="star4-2" name="rating2" value="4"><label for="star4-2">★</label>
                <input type="radio" id="star3-2" name="rating2" value="3"><label for="star3-2">★</label>
                <input type="radio" id="star2-2" name="rating2" value="2"><label for="star2-2">★</label>
                <input type="radio" id="star1-2" name="rating2" value="1"><label for="star1-2">★</label>
            </div>
            <label for="feedback2">Your Thoughts:</label>
            <textarea id="feedback2" name="feedback2" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>

</body>
</html>