<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout:womenpage-container title="Fitness Programs" activePage="wLeg">

    <html>
    <head>
        <title>Title</title>
    </head>
    <body>

    <section id="exercise" class="exercise-list">
        <div class="br-line"></div>
        <h2></h2>
        <div class="choose-exercise">

                <%-------------------------- PIC 1  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/wLegsWorkouts/legWO1.jpg' />" alt="arm workout" width="100%"
                         height="420px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
            <div class="sep-line"></div>

                <%-------------------------- PIC 2  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/wLegsWorkouts/legWO2.jpg' />" alt="arm workout" width="100%"
                         height="400px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
            <div class="sep-line"></div>

                <%-------------------------- PIC 3  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/wLegsWorkouts/legWO3.jpg' />" alt="arm workout" width="100%"
                         height="400px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
            <div class="sep-line"></div>

                <%-------------------------- PIC 4  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/wLegsWorkouts/legWO4.jpg' />" alt="arm workout" width="100%"
                         height="400px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
            <div class="sep-line"></div>

    </body>
    </html>

</layout:womenpage-container>