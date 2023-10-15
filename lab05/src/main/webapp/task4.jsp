<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 14/10/23
  Time: 10:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            transition: .2s linear;
        }

        #form2 #contact {
            width: 600px;
            height: 550px;
            position: absolute;
            top: 50%;
            left: 25%;
            transform: translate(-50%, -50%);
            background-color: #E6E6E6;
        }

        #form2 .container {
            width: 94%;
            height: 94%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
            border-radius: 8px;
            background-color: white;
            padding: 20px;
            display: block;
        }

        #form2 .container h1 {
            text-align: center;
            font-weight: 900;
            margin-top: 25px;
            margin-bottom: 25px;
        }

        #form2 .container .input {
            margin: 0 20px;
            margin-top: 15px;
            background-color: #F7F7F7;
            border-radius: 10px;
            padding: 10px 15px;
            height: 55px;
        }

        #form2 .container .input p {
            font-size: 8px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }

        #form2 .container .input input {
            width: 100%;
            background-color: inherit;
            border: none;
            font-size: 14px;
            outline: none;
            padding-top: 10px;
        }

        #form2 .container .input select {
            width: 100%;
            background-color: inherit;
            border: none;
            font-size: 14px;
            outline: none;
            padding-top: 10px;
        }

        #form2 .container .half-input {
            margin: 0 20px;
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        #form2 .container .half-input .input {
            margin: 0;
            width: 230px;
        }

        #form2 .container .submit {
            background-color: #333333;
            color: white;
            text-align: center;
            margin: 0 20px;
            margin-top: 20px;
            width: calc(100% - 40px);
            border-radius: 20px;
            padding: 5px;
            font-size: 14px;
            letter-spacing: .3px;
        }

        #form2 .container button i {
            font-size: 10px;
        }

        #form2 .container .submit:hover {
            cursor: pointer;
            background-color: white;
            border: 1px solid #333;
            color: black;
            animation: all 2s;
        }

        #form2 .container .area {
            height: 100px;
            border: 1px solid #E6E6E6;
            background-color: inherit;
        }

        #form3 {
            background-color: #E3E3E3;
            width: 450px;
            height: 630px;
            position: absolute;
            top: 50%;
            left: 75%;
            transform: translate(-50%, -50%);
        }

        #form3 .container {
            padding: 30px;
            background-color: #fff;
            width: 95%;
            height: 96%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border-radius: 3px;
            box-shadow: 0 0 10px 1px #d0cfcf;
            display: inline;
        }

        #form3 .container .item {
            font-size: 15px;
            margin-bottom: 30px;
        }

        #form3 .container .item span {
            color: #7ED321;
            font-weight: 600;
        }

        #form3 .container .item .sub-item {
            height: 35px;
            margin-top: 15px;
        }

        #form3 .container .account-item .sub-item {
            background-color: #F9F9F9;
            border: 1.5px solid #EBEBEB;
            display: flex;
        }

        #form3 .container .account-item .sub-item input {
            width: 85%;
        }

        #form3 .container .item .sub-item .icon {
            width: 15%;
            height: 100%;
            /*background-color: #777;*/
            border-right: 1px solid #ebebeb;
            position: relative;
        }

        #form3 .container .item .sub-item .icon i {
            color: #c2c2c2;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        #form3 .container .item .sub-item input {
            border: none;
            background-color: inherit;
            height: 100%;
            padding-left: 15px;
            outline: none;
            opacity: 0.8;
        }

        #form3 .container .half-item {
            display: flex;
            justify-content: space-between;
        }

        #form3 .container .date-item,
        #form3 .container .gender-item {
            width: 180px;
        }

        #form3 .container .gender-item .sub-item,
        #form3 .container .date-item .sub-item {
            display: flex;
            justify-content: space-between;
            width: 100%;
            /*height: 35px;*/
        }

        #form3 .container .date-item .sub-item input {
            width: 50px;
            border: 1.5px solid #EBEBEB;
            padding-left: 10px;
            padding-right: 10px;
        }

        #form3 .container .date-item .sub-item input.y {
            min-width: 70px;
        }

        #form3 .container .gender-item .sub-item input {
            width: 90px;
            border: 1.5px solid #EBEBEB;
            padding: 0;
            text-align: center;
        }

        #form3 .container .gender-item .sub-item input:hover {
            cursor: pointer;
            background-color: #7ED321;
        }

        #form3 .container .terms-item {
            margin: 0;
        }

        #form3 .container .terms-item .sub-item {
            display: flex;
        }

        #form3 .container .terms-item .sub-item p {
            margin-left: 10px;
            color: #c2c2c2;
            font-size: 12px;
        }

        #form3 .container .payment-item .sub {
            margin-top: 15px;
            background-color: #F9F9F9;
            border: 1.5px solid #EBEBEB;
            width: 100%;
            height: 35px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #form3 .container .payment-item .half-item .active {
            color: white;
            background-color: #7ED321;
        }

        #form3 .container .payment-item .half-item i {
            padding: 0 7px;
        }

        #form3 .container .payment-item .sub {
            color: #c2c2c2;
            font-size: 14px;
        }

        #form3 .container .payment-item .sub:hover {
            /*background-color: #7ED321;*/
            cursor: pointer;
            /*color: white;*/
        }

        #form3 .container .payment-item .sub-item {
            display: flex;
            background-color: #F9F9F9;
            border: 1.5px solid #EBEBEB;
        }

        #form3 .container .payment-item .half-item1 {
            display: flex;
            justify-content: space-between;
        }

        #form3 .container .payment-item .half-item1 .sub-item {
            width: 180px;
            display: flex;
        }

        #form3 .container .payment-item .half-item1 .sub-item input {
            width: 85%;
        }

        #form3 .container .payment-item .half-item1 .sub-item .icon {
            width: 40%;
            height: 100%;
            /*background-color: #777;*/
            border-right: 1px solid #ebebeb;
        }

        #form3 .container .payment-item .half-item1 .sub-item select {
            width: 50%;
            outline: none;
            border: none;
            border-right: 1.5px solid #ebebeb;
            padding-left: 10px;
            color: #6D6D6D;
        }
        #form3 .container .item .sub-item .submit:hover {
            color: #7ED321;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div id="form2">
    <div id="contact">
        <div class="container">
            <h1>Contact Us</h1>
            <form action="task4" method="get">
                <div class="input">
                    <p>FULL NAME *</p>
                    <input type="text" name="full-name1" placeholder="Enter Your Name">
                </div>
                <div class="half-input">
                    <div class="input">
                        <p>EMAIL *</p>
                        <input type="text" name="email1" placeholder="Enter Your Email">
                    </div>
                    <div class="input">
                        <p>PHONE </p>
                        <input type="text" name="phone" placeholder="Enter Your Phone">
                    </div>
                </div>
                <div class="input">
                    <p>NEEDED SERVICES *</p>
                    <select name="select" id="select" class="combobox">
                        <option value="Please Chooses">Please Chooses</option>
                        <option value="So Bad">So Bad</option>
                        <option value="Normal">Normal</option>
                        <option value="Good">Good</option>
                        <option value="Great">Great</option>
                        <option value="Unbelieveble">Unbelieveble</option>
                    </select>
                </div>
                <div class="input area">
                    <p>MESSAGE </p>
                    <input type="text" name="message" placeholder="Your message here...">
                </div>
                <input type="submit" class="submit" value="Submit">
            </form>
        </div>
    </div>
</div>

<div id="form3">
    <div class="container">
        <form action="task4" method="get">
            <div class="account-item item">
                <span>Account</span>
                <div class="sub-item">
                    <div class="icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <input type="text" name="full-name2" placeholder="Full Name">
                </div>
                <div class="sub-item">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <input type="text" name="email2" placeholder="Email Address">
                </div>
                <div class="sub-item">
                    <div class="icon">
                        <i class="fa-solid fa-key"></i>
                    </div>
                    <input type="password" name="pass" placeholder="Password">
                </div>
            </div>
            <div class="half-item">
                <div class="date-item item">
                    <span>Date of Birth</span>
                    <div class="sub-item">
                        <input type="text" name="day" placeholder="DD">
                        <input type="text" name="month" placeholder="MM">
                        <input type="text" name="year" placeholder="YYYY" class="y">
                    </div>
                </div>
                <div class="gender-item item">
                    <span>Gender</span>
                    <div class="sub-item">
                        <input type="text" name="" placeholder="Male" disabled>
                        <input type="text" name="" placeholder="Female" disabled>
                    </div>
                </div>
            </div>
            <div class="payment-item item">
                <span>Payment Details</span>
                <div class="half-item">
                    <div class="sub active">
                        <i class="fa-solid fa-message"></i>
                        <p>Creadit Card</p>
                    </div>
                    <div class="sub">
                        <i class="fa-brands fa-cc-paypal"></i>
                        <p>Paypal</p>
                    </div>
                </div>
                <div class="sub-item">
                    <div class="icon">
                        <i class="fa-solid fa-credit-card"></i>
                    </div>
                    <input type="text" name="cart" placeholder="Cart Number">
                </div>
                <div class="half-item1">
                    <div class="sub-item">
                        <div class="icon">
                            <i class="fa-solid fa-user"></i>
                        </div>
                        <input type="text" name="card" placeholder="Card CVC">
                    </div>
                    <div class="sub-item">
                        <select name="day2">
                            <option value="1">01 Jan</option>
                            <option value="2">02 Jan</option>
                        </select>
                        <select name="year2">
                            <option value="1">2015</option>
                            <option value="2">2016</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="terms-item item">
                <span>Terms and Conditions</span>
                <div class="sub-item">
                    <input type="checkbox" name="check">
                    <p>I accept the terms and conditions for signing up to this service, and hereby confirm I have read the
                        privacy policy</p>
                    <input type="submit" class="submit" value="Submit">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>