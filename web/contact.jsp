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
        <title>Contact Page</title>
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
                    <div class="content-left pr-20 contact">
                        <div class="contact-title">Contact</div>
                        <div class="contact-heading">Photographer</div>
                        <table class="contact-item">
                            <tr>
                                <td class="pr-20">Address:</td>
                                <td>${contact.address}</td>
                            </tr>
                            <tr>
                                <td class="pr-20">City:</td>
                                <td>${contact.city}</td>
                            </tr>
                            <tr>
                                <td class="pr-20">Country:</td>
                                <td>${contact.country}</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr >
                                <td class="pr-20 pt-20">Tel:</td>
                                <td class="pt-20">${contact.tel}</td>
                            </tr>
                            <tr>
                                <td class="pr-20">Email:</td>
                                <td>${contact.email}</td>
                            </tr>
                        </table>
                        <img class="w-100 mt-50 mb-30" src="${contact.image}" />
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
