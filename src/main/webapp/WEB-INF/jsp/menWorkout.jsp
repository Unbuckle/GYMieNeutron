<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout:page-container title="Fitness Programs" activePage="menWorkout">

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
        <a href="#" class ="scroll-btn">
            <span></span>
            Scroll
        </a>
            </div>
            <br/>
        </header>

        <section id="choose-programs" class="program-list">
            <div class="br-line"></div>
            <h2> text text text!</h2>

            <div class="choose-programs">
                <a href="/womenWorkout">
                    <div class="program-card">
                    <img src="<c:url value='./images/MAbs.jpg' />" alt="fitness" class="card-thumbnail">
<%--                  <div class="overlay"><img src="images/overlay.png" alt="">--%>
                    <div class="detail">
                        <p class="title">The Way to get a Sixpack</p>
                        </div><p class="more-details">
                        <p class="more-details"><span>Equipment:</span> Fitness Mat</p>
                    </div>
                </a>

<%--                <img src="<c:url value='./images/MAbs.jpg' />" alt="fitness" width="500" height="350"/>--%>
            </div>

        </section>


        <%--<div class="col-md-10">
            <select name="programs" class="form-control">
                <option value="1"<c:if test="${user.programs.id == 1}"> selected</c:if>>Abs</option>
                <option value="2"<c:if test="${user.programs.id == 2}"> selected</c:if>>Workout 2</option>
                <option value="3"<c:if test="${user.programs.id == 3}"> selected</c:if>>Workout 3</option>
            </select>
        </div>--%>



    </div>
    </body>
</html>

</layout:page-container>
