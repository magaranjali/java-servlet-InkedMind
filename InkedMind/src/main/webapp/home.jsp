<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/index.css">
    <title>Inked Mind</title>
</head>

<body>
  
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">


            <a class="logo" href="#">
                <img src="images/logo.png" alt="">
            </a>

            <div class="navBarConatains">
                <div class="navLinks">
                    <div>
                        <ul>
                            <li class="active"><a href="index.html">Home</a></li>
                            <li><a href="explore.html">Explore</a></li>
                            <li><a href="contest.html">Contest</a></li>
                            <li><a href="subscribe.html">Subscribe</a></li>
                            <li><a href="Find">Find</a></li>
                            
                        </ul>
                    </div>

                    <div class="searchBar">
                        <input type="text" placeholder="Search">
                    </div>
                </div>

                <div class="notificationIcon">
                    <img src="icons/notificationIcon.png" alt="">
                </div>

                <div class="profileIcon">
                    <a href="Profile">
                        <img src="images/smallProfile.png" alt="">
                        
                    </a>
                </div>
            </div>
        </div>
    </nav>
<div>
<h1>Welcome, ${user}!</h1> </div>


    <div class="hero">
        <img src="images/background.png" alt="" class="img-fluid">
        <div class="contain">
            <h1>Unleash Poetry</h1>
            <p>Dive into a world of words, rhythm and emotions. Let your verses dance on the stage of Inked Mind.</p>
        </div>

    </div>

    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <h5>About Us</h5>
                    <p>Inked Mind is a platform where poetry enthusiasts can share their work, connect with others, and get discovered.</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Quick Links</h5>
                    <ul>
                        <li><a href="home.html">Home</a></li>
                        <li><a href="explore.html">Explore</a></li>
                        <li><a href="contest.html">Contest</a></li>
                        <li><a href="subscribe.html">Subscribe</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Follow Us</h5>
                    <ul>
                        <li><a href="#"><i class="fa-brands fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fa-brands fa-x-twitter"></i> Twitter</a></li>
                        <li><a href="#"><i class="fa-brands fa-instagram"></i> Instagram</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Contact Us</h5>
                    <p><i class="fa-solid fa-envelope"></i> Email: <a href="mailto:support@inkedmind.com"></i>support@inkedmind.com</a></p>
                    <p><i class="fa-solid fa-phone"></i> Phone: 123-456-7890</p>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 Inked Mind. All rights reserved.</p>
            </div>
        </div>
    </footer>


    <script src="https://kit.fontawesome.com/69628762a8.js" crossorigin="anonymous"></script>
</body>

</html>