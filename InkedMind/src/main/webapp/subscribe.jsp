<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/subscribe.css">
    <title>INKED MIND</title>
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
                         <li><a href="Home">Home</a></li>
                        <li><a href="Explore">Explore</a></li>
                        <li><a href="Contest">Contest</a></li>
                        <li class="active"><a href="Subscribe">Subscribe</a></li>
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

    
    <div class="mainSection">
        <div style="color: #8C6239; font-size: 64px; text-align: center; font-family: poppins; font-weight: 700; word-wrap: break-word">Poetry Paradise</div>
<br>
 <br>       
        <div class="pricing-table">
            <div class="tier">
                <div>
                    <h1>Basic</h1>
                    <p class="price">Free</p>
                    <ul>
                        <li>Unlock poem sharing and commenting features.</li>
                    </ul>
                </div>
                <a href="home.html"> <button>Get started</button></a>
            </div>

            <div class="tier">
                <div>
                    <h1>Premium</h1>
                    <p class="price">$19.99/month</p>
                    <ul>
                        <li>Access exclusive contests and discounts on subscriptions.</li>
                    </ul>
                </div>
                <a href="payment.html"> <button>Get started</button></a>
            </div>
            <div class="tier">
                <div>
                    <h1>Monthly Contest Winner</h1>
                    <p class="price">Discount on Subscription</p>
                    <ul>
                        <li>Top 3 winners get exclusive discounts on their next subscription.</li>
                    </ul>
                </div>
               <a href="contests/upcoming.html"> <button>Get started</button></a>
            </div>
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
                        <li><a href="Home">Home</a></li>
                        <li><a href="Explore">Explore</a></li>
                        <li><a href="Contest">Contest</a></li>
                        <li><a href="Subscribe">Subscribe</a></li>
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