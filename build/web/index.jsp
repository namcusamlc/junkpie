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
                        <img class="w-100 gallery-height-img" src="${photographer.image}" />
                        <div id="phoDesc" class="sub-desc-home-image mb-20">
                            ${photographer.desc}
                        </div>

                        <div class="flex flex-row flex-wrap gallery-list">
                            <c:forEach items="${photographeres}" var="item">
                                <div class="gallery-item flex flex-column mb-20">
                                    <img src="${item.image}" />
                                    <a href="Gallery?id=${item.id}">${item.title}</a>
                                    <div class="gallery-item-desc">${item.desc}</div>
                                </div>
                            </c:forEach>
                        </div>

                        <%@include file="/about.jsp" %>
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

