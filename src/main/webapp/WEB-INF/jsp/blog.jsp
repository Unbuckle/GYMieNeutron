<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="file" tagdir="/WEB-INF/tags/file" %>

<layout:page-container title="Blog" activePage="blog">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
                <%--@elvariable id="blogdto" type="at.fhj.ima.project.gymieneutron.dto.BlogDto"--%>
            <form:form modelAttribute="blogdto" class="needs-validation form-horizonal" method="post" action="editBlog"
                       novalidate="novalidate">
                <input type="hidden" path="id" name="id"/>
                <input type="hidden" path="user" name="user"/>
                <fieldset>
                    <! ---------------- title ---------------- -->
                    <div class="form-group">
                        <label for="inputTitle" class="col-md-2 control-label">Title</label>
                        <div class="col-md-10">
                            <form:input id="inputTitle" path="title" type="text" class="form-control"/>
                            <form:errors path="title" cssClass="invalid-feedback d-block"/>

                        </div>
                    </div>

                    <! ---------------- Infotext ---------------- -->
                    <div class="form-group">
                        <label for="inputInfotxt" class="col-md-2 control-label">Infotext</label>
                        <div class="col-md-10">
                            <form:input id="inputInfotxt" path="infotxt" type="text" class="form-control"/>
                            <form:errors path="infotxt" cssClass="invalid-feedback d-block"/>
                        </div>
                    </div>

                    <! ---------------- files ---------------- -->
                    <div class="form-group">
                        <label for="inputInfotxt" class="col-md-2 control-label">Files</label>
                        <div class="col-md-10">
                            <file:file path="files" value="${user.files}"/>
                        </div>
                    </div>

                    <! ---------------- buttons ---------------- -->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-2">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>

                </fieldset>
            </form:form>
        </div>
    </div>

    <div class="row">
        <div class="col-md-10 col-md-offset-1">

            <table data-toggle="table" class="table table-striped">
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Info</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${currentUser.blog}" var="blog">
                    <tr>
                        <td>${blog.title}</td>
                        <td>${blog.infotxt}</td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

    </body>


</layout:page-container>