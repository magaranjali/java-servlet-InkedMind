<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inked Mind</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <link href = "css/login.css" rel="stylesheet">
</head>
<body>
<body style="font-family: Inter; align-items: center;">

    <div class="container" style="align-content: center;">
      <div class="logo">
        <img src="images/logo.png">
      </div>
      <p style="color: red">${error}</p>
        <p style="color: green">${notify}</p>
      <form action="Login" method="post">
      <div>
      
        <input type="text" name="username" class="sub" placeholder="Username">
    </div>

    <div>
        <input type="password" name="password" class="sub" placeholder="Password">
        
    </div>

       <input type="submit" class="buton" value="Login">
       
     </form>
        <div class="sin">
        <p class="plog" style="font-size: 18px;">Do not have an account?</p>
        <a href = "Signup" class = "button">Sign up</a>
        </div>
      </div>

        </div>        
      </div>
    </div>
</body>
</html>