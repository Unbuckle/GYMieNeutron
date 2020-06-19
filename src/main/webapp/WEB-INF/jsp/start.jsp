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

   <%--<html>
    <head>
        <title>Start</title>
    </head>
    <body>--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mt-4 mb-5 ">
                <h2> Please choose one of the two options </h2>
            </div>
        </div>
            <div class="col-lg-8 d-flex justify-content-center mt-5">
                <div>
                    <ul>
<%--                    <button class="btn btn-outline-dark btn-lg" style="width: 200px" href="/menWorkout" role="button">Men</button>--%>
                        <a href="menWorkout" class="btn btn-outline-dark btn-lg" style="width: 200px">Men</a>
                    </ul>

                    <ul>
<%--                    <button class="btn btn-outline-dark btn-lg" style="width: 200px" href="#" role="button">Women</button>--%>
                        <a href="womenWorkout" class="btn btn-outline-dark btn-lg" style="width: 200px">Women</a>
                    </ul>
                </div>
            </div>
    </div>
    <%--</body>
    </html>--%>


</layout:page-container>