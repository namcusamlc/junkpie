<%-- 
    Document   : index
    Created on : Feb 24, 2021, 3:19:35 PM
    Author     : hieuphan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./public/css/style.css" />
        <link rel="stylesheet" type="text/css" href="./public/css/header.css" />
        <link rel="stylesheet" type="text/css" href="./public/css/footer.css" />
        <link rel="stylesheet" type="text/css" href="./public/css/social.css" />
    </head>
    <body class="m-0">
        <%@include file="/header.jsp" %>

        <div class="body pt-30 pb-22">
            <div class="container">
                <div class="flex flex-row w-100">
                    <div class="content-left pr-20">
                        <div class="gallery-page-title">Gallery ${gallery.get(0).id}</div>

                        <div class="relative">
                            <c:forEach items="${gallery}" var="item">
                                <div class="mySlides">
                                    <img class="w-100 gallery-height-img" onclick="pause()" src="${item.image}" />
                                </div>
                            </c:forEach>
                            <a id="back" class="back-slide display-none" onclick="move(-1)">&#10094;</a>
                            <a id="next" class="next-slide display-none" onclick="move(1)">&#10095;</a>

                            <a id="play" class="btn-play cursor-pointer" onclick="autoSlideshow()">
                                <img src="public/images/play.png" />
                            </a>
                        </div>

                        <div class="flex flex-row flex-wrap mt-50">
                            <c:forEach items="${gallery}" var="item">
                                <div class="gallery-page-thubnail">
                                    <img class="w-100 h-80" src="${item.image}" />
                                </div>
                            </c:forEach>
                        </div>

                    </div>
                    <div class="content-right">
                        <%@include file="/social.jsp" %>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="/footer.jsp" %>
    </body>
</html>

<script type="text/javascript">
    var slideIndex = 0;
    var interval = null;
    // load default
    move(0);

    // pause auto slide show
    function pause() {
        document.getElementById("back").style.display = "none";
        document.getElementById("next").style.display = "none";
        document.getElementById("play").style.display = "block";
        clearInterval(interval);
    }

    //automatic slide show
    function autoSlideshow() {
        document.getElementById("back").style.display = "block";
        document.getElementById("next").style.display = "block";
        document.getElementById("play").style.display = "none";
        interval = setInterval(() => move(1), 2000);
    }

    // back/next slide
    function move(n) {
        let slides = document.getElementsByClassName("mySlides");

        slideIndex = (slideIndex + n + slides.length) % slides.length;

        for (var i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        slides[slideIndex].style.display = "block";
    }


</script>
