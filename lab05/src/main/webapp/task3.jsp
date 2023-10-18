<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif, Arial;
            transition: .2s linear;
        }

        body {
            width: 100%;
            height: 100%;
            /*background: url("background.png") no-repeat;*/
            /*background-position: center;*/
            background-size: cover;
            margin: 0;
        }

        .mask {
            width: 100%;
            height: 100%;
            opacity: 0.5;
            position: absolute;
            background: linear-gradient(45deg, #4444d9, #7c14e3);;
        }

        #form {
            width: 25%;
            height: 85%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border-radius: 10px;
            background-color: white;
        }

        .container {
            width: 95%;
            height: 94%;
            background-color: white;
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        .container h1 {
            padding: 20px 0;
            letter-spacing: .3px;
        }

        .container .input {
            background-color: white;
            margin: 20px 0;
            width: 100%;
            height: 100px;
            border-radius: 10px;
            margin-bottom: 20px;
            /*position: relative;*/
        }

        .container .input input {
            width: 80%;
            height: 36px;
            border-radius: 20px;
            outline: none;
            border: none;
            font-weight: 800;
            margin: 10px auto;
            /*background-color: #8B0000;*/
            /*position: absolute;*/
            /*top: 50%;*/
            /*transform: translateY(-50%);*/
            /*left: 20px;*/
            letter-spacing: .5px;
            box-shadow: 0 4px 15px #e7e6e6;
        }

        .container .input .btn {
            background-color: #bc59d6;
            color: white;
            border-radius: 50px;
            padding: 15px 35px;
            border: none;
            outline: none;
            width: 50%;
            font-weight: 700;
            box-shadow: 0 4px 20px 0 #bc59d6;
        }

        .container .input .btn:hover {
            cursor: pointer;
            color: black;
            background-color: #dd9fee;
        }

        .container p {
            font-size: 15px;
            color: #c5c5c5;
            padding-top: 60px;
            padding-bottom: 20px;
        }

        .container .icon {
            width: auto;
            height: auto;
            margin-bottom: 80px;
        }

        .container .icon img {
            width: 30px;
            height: 30px;
            margin: 0 5px;
            border-radius: 50%;
            box-shadow: 0 3px 5px 1px #E6E6E6;
        }

        .container .icon img:hover {
            cursor: pointer;
            opacity: 0.8;
        }

        .container a {
            text-decoration: none;
            color: #6F5D73;
            font-weight: 600;
        }

        .container a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
<div class="mask"></div>
<div id="form">
    <div class="container">
        <h1>Sign in</h1>
        <div class="input">
            <form action="task3" method="post">
                <input type="text" name="username" id="username" placeholder="username or email" >
                <br>
                <input type="password" name="password" id="password" placeholder="password" >
                <br>
                <input type="submit" class="btn" value="Log in">
            </form>
        </div>
        <p>Or login with</p>
        <div class="icon">
            <img src="facebook.png" alt="">
            <img src="google.png" alt="">
        </div>
        <a href="#">Sign Up</a>
    </div>
</div>
<script>
    const username = document.getElementById('username');
    const password = document.getElementById('pass');

    function check() {
        // Kiểm tra email có hợp lệ không
        if (!isValidEmail(username)) {
            document.getElementById('Error').textContent = 'Email không hợp lệ';
            document.getElementById('username').classList.add('error');
        }

        // Kiểm tra password có hợp lệ không (ví dụ: ít nhất 6 ký tự)
        if (password.length < 6) {
            document.getElementById('Error').textContent += ' Password phải có ít nhất 6 ký tự';
            document.getElementById('pass').classList.add('error');
        }
    }

    function isValidEmail(username) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(username);
    }
</script>
</body>
</html>