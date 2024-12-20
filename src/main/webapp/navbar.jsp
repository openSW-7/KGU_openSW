<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈</title>
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<nav class="navbar">
    <a href="home.jsp" class="logo"><img src="./img/chan.jpeg" alt="로고"></a>
    <ul class="navbar-center">
        <li><a href="home.jsp">홈</a></li>
        <li><a href="naverMap.jsp">맛집탐방</a></li>
        <li><a href="recommend.jsp">맛집추천</a></li>
    </ul>
    <div class="navbar-right">
        <c:choose>
            <c:when test="${not empty sessionScope.loggedInUser}">
                <a >${sessionScope.loggedInUser.loginId} 님</a>
                <a href="logout.jsp">로그아웃</a>
            </c:when>
            <c:otherwise>
                <a href="login.jsp">로그인</a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
</body>
