<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INKED MIIND</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <link href = "css/signin.css" rel="stylesheet">
</head>
<body>
<body style="font-family: Inter; align-items: center;">
    <div class="container" style="align-content: center;">
      <div class="logo">
        <img src="images/logo.png">
      </div>
       <p style="color: red">${error}</p>
        <p style="color: green">${notify}</p>
      <form action="Signup" method="post">
      <div>
        <input type="text" name="email" class="sub" placeholder="Enter your gmail">
    </div>

      <div>
        <input type="text" name="username" class="sub" placeholder="Username">
    </div>

    <div>
        <input type="text" name="password" class="sub" placeholder="Password">
        
    </div>
    
    <input type="submit" class="buton" value="Signup">
    
</form>
        <div class="sign">
        <p class="plog" style="font-size: 16px;">Already have an account?</p>
        <a href = "Login" class = "button">Login</a>
        </div>
      </div>

        </div>        
      </div>
    </div>
</body>
</html>