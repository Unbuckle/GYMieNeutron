<%--
  Created by IntelliJ IDEA.
  User: lolik
  Date: 19.06.2020
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>




<layout:menpage-container title="Ab Workout" activePage="menWorkout">
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
                    <article class ="Ab 1">
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/mAbsWorkouts/abWO1.jpg' />" alt="arm workout" width="100%"
                         height="420px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    <h2>Ab Exercise One</h2>
                    <div>
                        <p> At Home Equipment: Fitness Mat, Weights </p>
                    </div>
                </div>
            </div>
            <div class="sep-line"></div>
                    </article>

                <%-------------------------- PIC 2  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/mAbsWorkouts/abWO2.jpg' />" alt="arm workout" width="100%"
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
                    <img src="<c:url value='/images/mAbsWorkouts/abWO3.jpg' />" alt="arm workout" width="100%"
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
                    <img src="<c:url value='/images/mAbsWorkouts/abWO4.jpg' />" alt="arm workout" width="100%"
                         height="400px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
            <div class="sep-line"></div>

                <%-------------------------- PIC 5  ---------------------------%>
            <div class="row">
                <div class="col-md-6">
                    <img src="<c:url value='/images/mAbsWorkouts/abWO5.jpg' />" alt="arm workout" width="100%"
                         height="400px" class="card-thumbnail">
                </div>
                <div class="col-md-6" style="padding-top: 150px">
                    Arm Workouts<br>
                    At Home Equipment: Fitness Mat, Weights
                </div>
            </div>
    </body>
    </html>
</layout:menpage-container>