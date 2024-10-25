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
                    <div>
                        <ul>
                            <li><a href="Home">Home</a></li>
                            <li><a href="Explore">Explore</a></li>
                            <li class="active"><a href="../contest">Contest</a></li>
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
                    <a href="../profile.html">
                        <img src="../images/smallProfile.png" alt="">
                    </a>
                </div>

            </div>
        </div>
    </nav>

    <main class="mainSection">
        <center>
            <h1>Past Contest</h1>
        </center>
        <div class="event">
            <h2>Parallel Universes (April, 2024)</h2>
            <div class="detial">
                <p><strong>Winner</strong> : Anushree Acharya</p>
                <p><strong>1st runnerup</strong> : Rupasi Dahal</p>
                <p><strong>2nd runnerup</strong> : Kiran Koirala</p>
            </div>
        </div>
        <div class="event">
            <h2>The Ocean’s call (March, 2024)</h2>
            <div class="detial">
                <p><strong>Winner</strong> : Anupama Shrestha</p>
                <p><strong>1st runnerup</strong> : Ram Rai</p>
                <p><strong>2nd runnerup</strong> : Pratik Patel</p>
            </div>
        </div>
    </main>
</body>

</html>