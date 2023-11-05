<%@ page import="vn.edu.hcmuaf.User" %>
<%
    User user = (User) session.getAttribute("auth");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="header.css">
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="navbar">
        <img src="logo.png" class="logo">
        <nav>
            <ul>
                <li><a href="#">HOME</a></li>
                <li><a href="#">REGION</a></li>
                <li><a href="#">ABOUT</a></li>
            </ul>
        </nav>
        <img src="menu.svg" class="menu-icon">
    </div>

    <div class="row">
        <div class="col">
            <h1>Sahara</h1>
            <p>Procuro um designer para elaborar um template de apresentação para um relatório em formato A4 vertical.
                Procuro um designer para elaborar um template de apresentação para um relatório em formato A4
                vertical.</p>
            <% if (user == null) { %>
            <a class="btn" style="text-decoration: none;
                    color: #000;
                    background-color: white;
                    padding: 10px 20px;
                    font-size: 12px;
                    border-radius: 20px"
               href="login.jsp">Get Started</a>
            <% } else { %>
            <a class="btn" style="text-decoration: none;
                    color: #000;
                    background-color: white;
                    padding: 10px 20px;
                    font-size: 12px;
                    border-radius: 20px"
               href="login.jsp"><%= user.getUsername() %>
            </a>
            <%--                <button type="button"> user.getUsername()</button>--%>
            <% } %>

        </div>
        <div class="col">
            <div class="card card1">
                <h5>Western Derset</h5>
                <p>Procuro um designer para elaborar um template dtical.</p>
            </div>
            <div class="card card2">
                <h5>Sahara Derset</h5>
                <p>Procuroapresentação para um relatório em formato A4 vertical.</p>
            </div>
            <div class="card card3">
                <h5>Mekong Derset</h5>
                <p>Pro apresentação para um relatório em formato A4 vertical.</p>
            </div>
            <div class="card card4">
                <h5>Kalogary Derset</h5>
                <p>Procuro um dão para um relatório em formato A4 vertical.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>