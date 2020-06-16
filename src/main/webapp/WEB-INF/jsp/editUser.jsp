<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout:page-container title="User" activePage="editUser">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <%--@elvariable id="user" type="at.fhj.ima.project.gymieneutron.entity.User"--%>
            <form:form modelAttribute="user" class="needs-validation form-horizonal" method="post" action="changeUser"
                       novalidate="novalidate">
            <input type="hidden" name="id" value="<c:out value="${user.id}"/>">
            <fieldset>
                <legend>Register ${user.username}</legend>

                <! ---------------- username ---------------- -->
                <div class="form-group">
                    <label for="inputUsername" class="col-md-2 control-label">Username*</label>
                    <div class="col-md-10">
                        <c:if test="${not empty user.id}">
                            <c:set var="usernameReadonly">readonly</c:set>
                        </c:if>
                        <input class="form-control" id="inputUsername" type="text" name="username"
                            ${usernameReadonly} value="<c:out value="${user.username}"/>" required>
                    </div>
                </div>

                <! ---------------- first Name ---------------- -->
                <div class="form-group">
                    <label for="inputFirstName" class="col-md-2 control-label">First Name*</label>
                    <div class="col-md-10">
                        <input class="form-control" id="inputFirstName" type="text"
                               name="firstName" value="<c:out value="${user.firstName}"/>" required>
                    </div>
                </div>

                <! ---------------- last Name ---------------- -->
                <div class="form-group">
                    <label for="inputLastName" class="col-md-2 control-label">Last Name*</label>
                    <div class="col-md-10">
                        <input class="form-control" id="inputLastName" type="text"
                               name="lastName" value="<c:out value="${user.lastName}"/>" required>
                    </div>
                </div>

                <! ---------------- dayOfBirth ---------------- -->
                <div class="form-group">
                    <label for="inputDate" class="col-md-2 control-label">Date</label>
                    <div class="col-md-10">
                        <input class="form-control" id="inputDate" placeholder="Date"
                               type="date" name="dayOfBirth"
                               value="${user.dayOfBirth}" required>
                    </div>
                </div>

                <! ---------------- email --------------------->
                <div class="from-group">
                    <label for="inputEmail" class="col-md-2 control-label">Email</label>
                    <div class="col-md-10">
                        <input class="form-control" id="inputEmail" type="text" name="email"
                               value="<c:out value="${user.email}"/>">
                    </div>
                </div>

                <! ---------------- buttons ---------------- -->
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-2">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a href="listUser" class="btn btn-default">Cancel</a>
                    </div>
                </div>


                                    <%-- <! ---------------- projects ---------------- -->
                     <div class="form-group">
                         <label for="inputDate" class="col-md-2 control-label">Projects</label>
                         <div class="col-md-10">
                             <form:select path="projects" items="${projects}" itemValue="id" itemLabel="name" cssClass="form-control"/>
                         </div>
                     </div>--%>

            </fieldset>
            </form:form>
        </div>
    </div>

    <bootstrap:bootstrap-js/>
</layout:page-container>
