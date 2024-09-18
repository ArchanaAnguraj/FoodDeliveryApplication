<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.tapfoods.daoimpl.RestuarantDaoImpl" %>
<%@ page import="com.tapfoods.models.Restuarant" %>
<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TapFoods</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #ff007f; /* Pink background */
  }
  
  nav {
    overflow: hidden; /* Clear floats */
    background-color: black;
    color: #fff;
    padding: 10px; /* Add padding for better spacing */
  }
  
  nav p {
    color: #ff007f; /* Pink text color */
    font-size: 24px;
    font-weight: bold;
    margin: 0;
    display: inline; /* Align text to the left */
  }

  /* Style the links inside the navbar */
  nav a {
    color: #ff007f; /* Pink text color */
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 20px;
    margin-left: 20px;
    float: right; /* Align links to the right */
  }

  /* Change color on hover */
  nav a:hover {
    background-color: pink;
    color: black;
  }

  /* Slideshow container */
  .slideshow-container {
    max-width: 80%;
    position: relative;
    margin: auto;
    margin-top: 20px;
    background-color: black;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  /* Slideshow images */
  .mySlides {
    display: none;
    width: 100%;
    height: 300px;
  }

  .slideshow-container img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 10px;
  }

  /* Next and previous buttons */
  .prev, .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    padding: 16px;
    margin-top: -22px;
    color: white;
    font-weight: bold;
    font-size: 24px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
  }

  /* Position the "next button" to the right */
  .next {
    right: 0;
    border-radius: 3px 0 0 3px;
  }

  /* On hover, add a black background color with a little bit of see-through */
  .prev:hover, .next:hover {
    background-color: rgba(0,0,0,0.8);
  }

  /* Description text */
  .description {
    text-align: center;
    color: #fff;
    font-size: 18px;
    margin-top: 10px;
    font-weight: bold;
  }

</style>
</head>
<body>

<nav>
  <p>TapFoods 🍴</p>
  <a href="signup.jsp">Sign up</a>
  <a href="login.jsp">Login</a>
</nav>

<!-- Slideshow container -->
<div class="slideshow-container">
  <div class="mySlides">
    <img src="https://wallpapercave.com/wp/wp3376127.jpg" alt="Slide 1">
  </div>

  <div class="mySlides">
    <img src="http://www.pixelstalk.net/wp-content/uploads/2016/08/HD-delicious-food-photos.jpg" alt="Slide 2">
  </div>

  <div class="mySlides">
    <img src="https://wallpapercave.com/wp/wp3724272.jpg" alt="Slide 3">
  </div>

  <!-- Description -->
  <div class="description">
    <strong>Delicious Food Awaits!</strong><br>
    <span>Explore a world of culinary delights with TapFoods. From gourmet dishes to local favorites, we have something to tantalize every taste bud. Dive into a dining experience that is sure to impress!</span>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<script>
  let slideIndex = 0;
  showSlides();

  function showSlides() {
    let slides = document.getElementsByClassName("mySlides");
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    slides[slideIndex-1].style.display = "block";  
    setTimeout(showSlides, 2000); // Change image every 2 seconds
  }

  function plusSlides(n) {
    slideIndex += n - 1;
    showSlides();
  }
</script>

</body>
</html>
