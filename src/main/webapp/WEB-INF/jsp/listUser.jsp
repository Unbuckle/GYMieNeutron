<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<layout:page-container title="User" activePage="listUser">

    <div class="page-header">
        <h2>User Management</h2>
    </div>

    <!--  Messages  ----------------------------------------------------------- -->

    <!--  Error message ----------------------------------------------------------- -->
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger" role="alert">${errorMessage}</div>
    </c:if>
    <!--  Error message ----------------------------------------------------------- -->

    <!--  Warning message ----------------------------------------------------------- -->
    <c:if test="${not empty warningMessage}">
        <div class="alert alert-warning" role="warning">${warningMessage}</div>
    </c:if>
    <!--  Warning message ----------------------------------------------------------- -->

    <!--  successful message ----------------------------------------------------------- -->
    <c:if test="${not empty message}">
        <div class="alert alert-success" role="warning">${message}</div>
    </c:if>
    <!--  successful message ----------------------------------------------------------- -->

    <!--  Messages  ----------------------------------------------------------- -->

    <!--  2 simple buttons ----------------------------------------------------------- -->
    <div class="row">
        <div class="col-md-4">
            <form class="form-inline" method="get" action="listUser">
                <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary" type="submit">
                    <svg class="bi bi-search" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 011.415 0l3.85 3.85a1 1 0 01-1.414 1.415l-3.85-3.85a1 1 0 010-1.415z" clip-rule="evenodd"/>
                        <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 100-11 5.5 5.5 0 000 11zM13 6.5a6.5 6.5 0 11-13 0 6.5 6.5 0 0113 0z" clip-rule="evenodd"/>
                    </svg>
                </button>
            </form>
        </div>
        <div class="col-md-4">
            <p>
                <sec:authorize access="hasAuthority('ROLE_ADMIN')">
                    <a href="/editUser" class="btn btn-success">Add new User</a>
                </sec:authorize>

            </p>
        </div>
    </div>
    <!--  2 simple buttons ----------------------------------------------------------- -->


    <div class="row">
        <div class="col-md-10 col-md-offset-1">

            <table data-toggle="table" class="table table-striped">
                <thead>
                <tr>
                    <th data-sortable="true">Username</th>
                    <th data-sortable="true">First Name</th>
                    <th data-sortable="true">Last Name</th>
                    <th data-sortable="true">Day of birth</th>
                    <th data-sortable="true">E-Mail</th>
                </tr>
                </thead>
                <tbody>
                <!--  list all employees ----------------------------------------------------------- -->
                <c:forEach items="${user}" var="user">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>
                            <fmt:parseDate value="${user.dayOfBirth}" pattern="yyyy-MM-dd" var="parsedDate" type="date"/>
                            <fmt:formatDate value="${parsedDate}" type="date" pattern="dd.MM.yyyy"/>
                        </td>
                        <td>
                            <sec:authorize access="hasAuthority('ROLE_ADMIN')">
                                <a href="/editUser?username=${user.username}" class="btn btn-success">Edit User</a>
                                <form:form method="post" action="/deleteUser?username=${user.username}">
                                    <button type="submit" class="btn btn-xs btn-danger">Delete</button>
                                </form:form>
                        </sec:authorize>
                        </td>
                    </tr>
                </c:forEach>
                <!--  list all employees ----------------------------------------------------------- -->
                </tbody>
            </table>
        </div>
    </div>


</layout:page-container>
