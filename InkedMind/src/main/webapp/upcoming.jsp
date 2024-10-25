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
    <link rel="stylesheet" href="css/past.css">
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
                            <li class="active"><a href="Contest">Contest</a></l i>
                            <li><a href="Subscribe">Subscribe</a></li>
                        </ul>
                    </div>

                    <div class="searchBar">
                        <input type="text" placeholder="Search">
                    </div>
                </div>

                <div class="notificationIcon">
                    <img src="../icons/notificationIcon.png" alt="">
                </div>

                <div class="profileIcon">
                    <a href="Profile">
                        <img src="../images/smallProfile.png" alt="">
                    </a>
                </div>

            </div>
        </div>
    </nav>

    <main class="mainSection">
        <center>
            <h1>Upcoming events</h1>
        </center>
        <div class="event">
            <h2>June 5-11: Nature’s Symphony Contest</h2>
            <div class="detial">
                <p><strong>Theme:</strong> Poems inspired by the sounds of nature</p>
                <p><strong>Submission Deadline:</strong> June 11</p>
                <p><strong>Voting Period:</strong> June 12-14</p>
                <p><strong>Winners Announced:</strong> June 15</p>
            </div>
        </div>
        <div class="event">
            <h2>June 25: Open mic Night</h2>
            <div class="detial">
                <p><strong>Theme:</strong> Free Expression</p>
                <p><strong>Time:</strong> 7:00 PM - 9:00 PM (EST)</p>
                <p><strong>Location:</strong> Zoom (link)</p>
            </div>
        </div>
    </main>

</body>

</html>