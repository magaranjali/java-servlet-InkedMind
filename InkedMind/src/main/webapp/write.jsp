<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form with Content</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }
        .form-container h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
            box-sizing: border-box;
            resize: vertical;
            height: 500px; 
        }
        .form-group-buttons {
            display: flex;
            justify-content: space-between;
        }
        .form-group-buttons button {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 48%;
        }
        .form-group-buttons button:last-of-type {
            background-color: #007bff;
        }
        .form-group-buttons button:hover {
            background-color: #218838;
        }
        .form-group-buttons button:last-of-type:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
    
        <h2>Create Post</h2>
        <form action="Write" method="post">
    <div class="form-group">
        <textarea id="description" name="description" placeholder="Enter the content" required></textarea>
    </div>
    <div class="form-group form-group-buttons">
        <button type="submit" name="action" value="save">Save</button>
        <button type="submit" name="action" value="post">Post</button>
    </div>
</form>
        
     
    </div>
</body>
</html>
    