<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/profile.css">
    <title>Document</title>
</head>

<body>

    <nav class="navbar fixed-top">
        <div class="container-fluid">
            <div class="back">
                <a href="home.html">
                    <img src="icons/backIcon.png" alt="">
                </a>
            </div>

            <div class="logout">
                <a href="login.html">
                    <img src="icons/logoutIcon.png" alt="" srcset="">
                </a>
            </div>

        </div>
    </nav>


    <div class="mainSection">
        <div class="infoSection">

            <div class="profile">
                <div class="profileImage">
                    <img src="images/largeProfile.png">
                    <h2>${sessionScope.user} ${sessionScope.userid}</h2>
                </div>

                <div class="detial">
                    <div class="followers">
                        <p>${followercount}</p>
                        <p>followers</p>
                    </div>

                    <div class="following">
                        <p>${followingcount}</p>
                        <p>following</p>
                    </div>
                </div>
            </div>

            <div class="activity">
                <div class="write">
                    <img src="icons/pen.png" alt="">
                    <p>Write</p>
                </div>

                <div class="liked">
                    <img src="icons/loveIcon.png" alt="">
                    <p>Liked</p>
                </div>

                <div class="saved">
                    <img src="icons/bookmarkIcon.png" alt="">
                    <p>Saved</p>
                </div>
            </div>

            <div class="collection">
                <h1>My collection</h1>
                <div class="collectionList">
                    <div class="list">
                        <img src="icons/collectionIcon.png" alt="">
                        <p>Brightest star</p>
                    </div>
                    <div class="list">
                        <img src="icons/collectionIcon.png" alt="">
                        <p>Way</p>
                    </div>
                    <div class="list">
                        <img src="icons/collectionIcon.png" alt="">
                        <p>Unintentional</p>
                    </div>
                    <div class="list">
                        <img src="icons/collectionIcon.png" alt="">
                        <p>Deity</p>
                    </div>
                </div>
        

            </div>

        </div>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>

</body>

</html>