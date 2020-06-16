<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<layout:page-container title="User" activePage="listPrograms">
<html>
<head>
    <title>Fitness Programs</title>
</head>
    <body>
    <! ---------------- Programs ------------------>
    <div class="form-group">
      <label for="inputProgram" class="col-md-2 control-label">Programs</label>
        <div class="col-md-10">
            <input class="form-control" id="inputProgram" type="text" name="program"
                   value="<c:out value="${user.program}"/>">
            <select name="programs" class="form-control">
                <option value="1"<c:if test="${user.programs.id == 1}"> selected</c:if>>Department 1</option>
                <option value="2"<c:if test="${user.programs.id == 2}"> selected</c:if>>Department 2</option>
                <option value="3"<c:if test="${user.programs.id == 3}"> selected</c:if>>Department 3</option>
            </select>
        </div>
    </div>
    </body>
</html>

<bootstrap:bootstrap-js/>
</layout:page-container>
