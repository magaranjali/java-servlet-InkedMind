<%@page import="java.util.ArrayList"%>
<%@page import="model.explore"%>
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
    <link rel="stylesheet" href="css/explore.css">
    <title>Verse Vibes</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="logo" href="#">
                <img src="images/logo.png" alt="">
            </a>
            <div class="navBarConatains">
                <div class="navLinks">
                    <ul>
                        <li><a href="Home">Home</a></li>
                        <li class="active"><a href="Explore">Explore</a></li>
                        <li><a href="Contest">Contest</a></li>
                        <li><a href="Subscribe">Subscribe</a></li>
                    </ul>
                </div>

                <div class="searchBar">
                    <input type="text" placeholder="Search">
                </div>

                <div class="notificationIcon">
                    <img src="icons/notificationIcon.png" alt="">
                </div>

                <div class="profileIcon">
                    <a href="profile.html">
                        <img src="images/smallProfile.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </nav>

    <div class="container-fluid mainSection">
        <div class="row">
            <!-- Left Section -->
            <div class="col-lg-2 leftSection">
                <div class="latest buzz">
                    <img src="icons/latestBuzz.png" alt="">
                    <p>Latest Buzz</p>
                </div>
                <div class="Write">
                    <img src="icons/pen.png" alt="">
                    <p>Write</p>
                </div>
                <div class="Subscribe">
                    <img src="icons/subscribe.png" alt="">
                    <p>Subscribe</p>
                </div>
                <div class="Contest">
                    <img src="icons/contest.png" alt="">
                    <p>Contest</p>
                </div>
            </div>

            <!-- Middle Section -->
            <div class="col-lg-7 middleSection">
                <%
                ArrayList<explore> elist = (ArrayList<explore>) request.getAttribute("elist");
                for (explore e : elist) {
                %>
                <div class="post">
                    <div class="user">
                        <div class="userIcon">
                            <img src="icons/user1.png" alt="">
                        </div>
                        <div class="userName">
                            <p><%= e.getUsername() %></p>
                        </div>
                    </div>

                    <div class="follow">
                        <p>follow</p>
                    </div>

                    <div class="userPost">
                        <p class="title">Compassion</p>
                        <br>
                        <p><%= e.getContent() %></p>
                    </div>

                    <div class="interaction">
                        <div class="likeShare">
                            <img src="icons/loveIcon.png" alt="">
                            <img src="icons/commentIcon.png" alt="">
                            <img src="icons/shareIcon.png" alt="">
                        </div>
                        <img src="icons/bookmarkIcon.png" alt="">
                    </div>
                </div>
                <% } %>
            </div>

            <!-- Right Section -->
            <div class="col-lg-3 rightSection">
                <div class="searchBar">
                    <input type="text" placeholder="Search">
                </div>

                <div class="activeList">
                    <img src="icons/user1.png" alt="">
                    <img src="icons/user2.png" alt="">
                    <img src="icons/user3.png" alt="">
                    <img src="icons/user4.png" alt="">
                    <img src="icons/user5.png" alt="">
                    <img src="icons/user6.png" alt="">
                </div>

                <div class="line"></div>

                <div class="chatList">
                    <div class="user">
                        <div class="profile">
                            <img src="icons/user1.png" alt="">
                        </div>
                        <div class="userName">
                            <p class="Name">Pinky Ji</p>
                            <p class="chat">You sent a message to Pinky Ji</p>
                        </div>
                    </div>
                    <div class="user">
                        <div class="profile">
                            <img src="icons/user2.png" alt="">
                        </div>
                        <div class="userName">
                            <p class="Name">Kaju</p>
                            <p class="chat">Kaju sent a message</p>
                        </div>
                    </div>
                </div>
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
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Instagram</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Contact Us</h5>
                    <p>Email: <a href="mailto:support@inkedmind.com">support@inkedmind.com</a></p>
                    <p>Phone: 123-456-7890</p>
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
