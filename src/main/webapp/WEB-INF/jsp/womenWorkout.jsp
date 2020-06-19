<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout:womenpage-container title="Fitness Programs" activePage="womenWorkout">

    <html>
    <head>
        <title>Fitness Programs</title>
    </head>
    <body>

    <div class="form-group">
        <header>
            <div class="header-title">
                <h2>Choose your Program</h2>

                <div>
                    <img src="<c:url value='./images/foto.jpg' />" alt="fitness" width="700" height="350"/>
                </div>

            </div>
            <div class="scroll-container">
                <a href="#programs" class ="scroll-btn">
                    <span></span>
                    Scroll
                </a>
            </div>
            <br/>
        </header>

        <section id="programs" class="program-list">
            <div class="br-line"></div>
            <h2> </h2>
            <div class="choose-programs">

                    <%-------------------------- ABS  ---------------------------%>
                <a href="/wAbs">
                    <div class ="each-program">
                        <div class="program-pic">
                            <img src="<c:url value='./images/WAbs.jpg' />" alt="fitness" width="520px" height="400px" class="card-thumbnail">
                        </div>
                        <div class="detail">
                            <p class="title">Abs Workouts</p>
                            <p class="equipments">
                                <span>At Home Equipment: </span> &nbsp; Fitness Mat, Weights</p>
                        </div>
                    </div>
                </a>
                    <%-------------------------- BACK  ---------------------------%>

                <a href="/wBack">
                    <div class ="each-program">
                        <div class="program-pic">
                            <img src="<c:url value='./images/WBack.jpg' />" alt="fitness" width="520px" height="400px" class="card-thumbnail">
                        </div>
                        <div class="detail">
                            <p class="title">Back Workouts</p>
                            <p class="equipments">
                                <span>At Home Equipment: </span> &nbsp; Fitness Mat, Pull Up Bar</p>
                        </div>
                    </div>
                </a>

                    <%-------------------------- ARMS  ---------------------------%>
                <a href="/wArms">
                    <div class ="each-program">
                        <div class="program-pic">
                            <img src="<c:url value='./images/WArm.jpg' />" alt="fitness" width="520px" height="400px" class="card-thumbnail">
                        </div>
                        <div class="detail">
                            <p class="title">Arm Workouts</p>
                            <p class="equipments">
                                <span>At Home Equipment: </span> &nbsp; Fitness Mat, Dumbbells, Barbells </p>
                        </div>
                    </div>
                </a>
                    <%-------------------------- LEGS  ---------------------------%>
                <a href="/wLegs">
                    <div class ="each-program">
                        <div class="program-pic">
                            <img src="<c:url value='./images/WLeg.jpg' />" alt="fitness" width="520px" height="400px" class="card-thumbnail">
                        </div>
                        <div class="detail">
                            <p class="title">Leg Workouts</p>
                            <p class="equipments">
                                <span>At Home Equipment: </span> &nbsp; Fitness Mat, Resistence Band</p>
                        </div>
                    </div>
                </a>

            </div>

        </section>

    </div>
    </body>
    </html>

</layout:womenpage-container>
