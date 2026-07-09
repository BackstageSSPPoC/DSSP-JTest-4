<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%
    ZonedDateTime now = ZonedDateTime.now(ZoneId.of("Asia/Kolkata"));
    DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    String currentTime = now.format(fmt) + " IST";
%>
<html>
    <head>
        <title>Java Web App</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #fdf6ec;
                text-align: center;
                padding-top: 100px;
            }
            .container {
                background: white;
                width: 500px;
                margin: auto;
                padding: 40px;
                border-radius: 10px;
                border-top: 6px solid #ed8b00;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
            }
            .badge {
                display: inline-block;
                background: #ed8b00;
                color: white;
                font-size: 12px;
                font-weight: bold;
                padding: 4px 12px;
                border-radius: 20px;
                margin-bottom: 15px;
                letter-spacing: 1px;
            }
            h1 {
                color: #2c3e50;
            }
            p {
                font-size: 20px;
                color: #c0392b;
            }
            .timestamp {
                font-size: 14px;
                color: #7f8c8d;
                margin-top: 20px;
            }
            .stack-info {
                font-size: 12px;
                color: #ed8b00;
                margin-top: 8px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="badge">☕ JAVA / JSP</div>
            <h1>Hello GSPANN From DSSP Portal</h1>
            <p>Pipeline Test Successful</p>
            <div class="timestamp">Deployed at: <%= currentTime %></div>
            <div class="stack-info">Running on Apache Tomcat</div>
        </div>
    </body>
</html>
