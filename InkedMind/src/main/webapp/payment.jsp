<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/payment.css">
    <title>Document</title>
</head>

<body>
        <div class="container">
            <div class="payment-box">
                    <h1>Payment Method</h1>
                <div class="plan">
                    Premium
                </div>
                <div class="plan-details">
                    $19.99/month
                </div>
        <form>
            <div class="formGroup"> 
                <label for="cardNumber">Card number</label>
                <div>
                    <input type="text" id="cardNumber" value="">
                </div>
            </div>
    
            <div class="formGroup">
                <label for="cardHolderName">Card holder name</label>
                <input type="text" id="cardHolderName" value="">
            </div>
    
    
            <div class=" formGroup">
                <label for="pin">Pin</label>
                <input type="password" id="pin" value="">
            </div>
    
    
            <div class="buttonGroup">
                <a href="Subscribe"class="cancel-button">Cancel</button>
                <a href="Successful"class="confirm-button">Confirm</button>
            </div>
        </form>
                
            </div>
        </div>


    
</body>

</html>