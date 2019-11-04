<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="../favicon.ico"/>
    <link rel="icon" type="image/x-icon" href="../favicon.ico"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="style.css">
    <title>드림 캐쳐 - 상담 하냥?</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="./js/httpRequest.js"></script>
    <script type="text/javascript" src="./js/chatBox.js"></script>
    <link rel="stylesheet" href="../style.css">
</head>
<body class="galerie_page">
<div class="header_area flexbox_container">
    <a href="./index.html"><div class="logo_area flexbox_item flexbox_item_logo"><img src="./images/logo.png" /></div></a>
    <div class="menu_area flexbox_item flexbox_item_menu">
        <a href="./index.html"><ul>홈</ul></a>
        <a class="current_page" href="./galerie.jsp"><ul>상담하기</ul></a>
        <a href="./kontakt.html"><ul>게시판</ul></a>
        <a href="./about.html"><ul>개발냥이</ul></a>
    </div>
</div>
<div class="grid_galerie_area">
    <div class="chat_window">
        <div class="top_menu">
            <div class="buttons">
                <div class="button close"></div>
                <div class="button minimize"></div>
                <div class="button maximize"></div>
            </div>
            <div class="title">Chat</div>
        </div>
        <ul class="messages"></ul>
        <div class="bottom_wrapper clearfix">
            <div class="message_input_wrapper">
                <input class="message_input" placeholder="Type your message here..." />
            </div>
            <div class="send_message">
                <div class="icon"></div>
                <div class="text">Send</div>
            </div>
        </div>
    </div>
    <div class="message_template">
        <li class="message">
            <div class="avatar"></div>
            <div class="text_wrapper">
                <div class="text"></div>
            </div>
        </li>
    </div>
</div>
<div class="footer_area">
    <a href="https://github.com/kusakina0608"><div class="footer_area">
        <p>Dream Catcher Project - https://github.com/kusakina0608</p>
    </a>
</div>
</body>
</html>