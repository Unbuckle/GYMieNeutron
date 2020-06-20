<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<layout:page-container title="User" activePage="start">

    <html>
    <head>
        <title>Start</title>

    </head>
    <body>

    <style>
        body{
            background-image: url('/images/logo.PNG');
            background-repeat: no-repeat;
            background-position: 50% 20%;
            background-size: 40% ;

        }
    </style>

    <div class="container">

        <div class="row">

            <div class="col-lg-8 mt-4 mb-5" style="text-align: center; padding-top: 60%; padding-left: 34%">
                <h1> Choose one option </h1>

            </div>
        </div>
        <div class="col-lg-8 d-flex justify-content-center mt-5" style="width: 100%; margin-top: 15%; padding-left: 31%; text-align:center">
            <div>
                <ul>
                    <a href="menWorkout" class="btn btn-outline-dark btn-lg" style="width: 200px">Men</a>
                </ul>

                <ul>
                    <a href="womenWorkout" class="btn btn-outline-dark btn-lg" style="width: 200px">Women</a>
                </ul>
            </div>
        </div>
    </div>
    </body>
    </html>


</layout:page-container>