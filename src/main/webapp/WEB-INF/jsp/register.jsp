<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout:page-container title="User" activePage="register">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
                <%--@elvariable id="user" type="at.fhj.ima.project.gymieneutron.entity.User"--%>
            <form:form modelAttribute="userdto" class="needs-validation form-horizonal" method="post" action="registerpost"
                       novalidate="novalidate">
                <input type="hidden" name="id" value=""/>
                <fieldset>
                    <legend>Register</legend>

                    <! ---------------- username ---------------- -->
                    <div class="form-group">
                        <label for="inputUsername" class="col-md-2 control-label">Username*</label>
                        <div class="col-md-10">

                            <input class="form-control" id="inputUsername" type="text" name="username"
                                <%--${usernameReadonly} value="<c:out value="${user.username}"/>" required>--%>
                        </div>
                    </div>

                    <! ---------------- password ---------------- -->
                    <div class="form-group">
                        <label id="inputPassword" for="inputPassword" class="col-md-2 control-label">Password*</label>
                        <div class="col-md-10">
                            <form:input id="inputPassword" path="password" type="password" class="form-control" required="required"/>
                            <form:errors path="password" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- password confirm ---------------- -->
                    <div class="form-group">
                        <label for="inputPasswordConfirm" class="col-md-2 control-label">Confirm Password*</label>
                        <div class="col-md-10">
                            <input class="form-control" id="inputPasswordConfirm" type="password"
                                   name="passwordConfirm" required>
                        </div>
                    </div>

                    <! ---------------- first Name ---------------- -->
                    <div class="form-group">
                        <label for="inputFirstName" class="col-md-2 control-label">First Name*</label>
                        <div class="col-md-10">
                            <form:input id="inputFirstName" path="firstName" type="text" class="form-control" required="required"/>
                            <form:errors path="firstName" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- last Name ---------------- -->
                    <div class="form-group">
                        <label for="inputLastName" class="col-md-2 control-label">Last Name*</label>
                        <div class="col-md-10">
                            <form:input id="inputLastName" path="lastName" type="text" class="form-control" required="required"/>
                            <form:errors path="lastName" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- dayOfBirth ---------------- -->
                    <div class="form-group">
                        <label for="inputDate" class="col-md-2 control-label">Date*</label>
                        <div class="col-md-10">
                            <form:input id="inputDate" path="dayOfBirth" type="date" class="form-control" required="required"/>
                            <form:errors path="dayOfBirth" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- email --------------------->
                    <div class="from-group">
                        <label for="inputEmail" class="col-md-2 control-label">Email</label>
                        <div class="col-md-10">
                            <form:input id="inputEmail" path="email" type="mail" class="form-control" required="required"/>
                            <form:errors path="email" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- buttons ---------------- -->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-2">
                            <button id="btnSubmit" type="submit" class="btn btn-primary">Submit</button>
                            <a href="/" class="btn btn-default">Cancel</a>
                        </div>
                    </div>

                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                    <script type="text/javascript">
                        $(function () {
                            $("#btnSubmit").click(function () {
                                var password = $("#inputPassword").value;
                                var confirmPassword = $("#inputPasswordConfirm").value;
                                if (password != confirmPassword) {
                                    alert("Passwords do not match.");
                                    return false;
                                }
                                return true;
                            });
                        });
                    </script>

                </fieldset>
            </form:form>
        </div>
    </div>

</layout:page-container>
