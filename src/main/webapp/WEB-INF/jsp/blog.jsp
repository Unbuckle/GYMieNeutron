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


    <%-- <head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
    input[type=text] {
        width: 100%;
        padding: 15px 20px;
        margin: 10px 0;
        box-sizing: border-box;
    }

    textarea {
        width: 100%;
        height: 150px;
        padding: 15px 20px;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        resize: none;
    }
</style>

</head>
<body>

<h2>Progress Blog</h2>

        <fieldset>
            <legend>Create Post</legend>
            <input id="title" type="text" placeholder="Enter Title...">
            <input id="infotxt" type="text" placeholder="Enter Some Text...">
            <div class="fakeimg"  style="height:200px; margin-top: 10px; margin-bottom: 10px">Image</div>
            <button type="button" id="btnpost" class="btn btn-outline-info">Post</button>
        </fieldset>


        <fieldset style="margin-top: 10px">
            <legend> MY POST</legend>
            <div id="output"></div>
        </fieldset>
--%>
    <%--
                          </div>
                            <div class="rightcolumn">
                                <div class="card">
                                    <h2>About Me</h2>
                                    <div class="fakeimg" style="height:100px;">Image</div>
                                    <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
                                </div>
                                <div class="card">
                                    <h3>Popular Post</h3>
                                    <div class="fakeimg">Image</div>
                                    <br>
                                    <div class="fakeimg">Image</div>
                                    <br>
                                    <div class="fakeimg">Image</div>
                                </div>
                                <div class="card">
                                    <h3>Follow Me</h3>
                                    <p>Some text..</p>
                                </div>
                            </div>
                        </div>

                        <div class="footer">
                            <h2>Footer</h2>
                        </div>--%>

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
                        <td>
                            <a class="btn btn-success">Edit User</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

    </body>

    <%--
        <script type="text/javascript">
            const title = document.getElementById("title");
            const infotxt = document.getElementById("infotxt");
            const btnpost = document.getElementById("btnpost");
            const output = document.getElementById("output");

            btnpost.onclick = function () {
                const blogtitle = title.value;
                const bloginfotxt = infotxt.value;

                if (blogtitle && bloginfotxt) {
                    window.localStorage.setItem(blogtitle, bloginfotxt);
                    location.reload();
                }
            };

            for (let i = 0; i < window.localStorage.length; i++) {
                const blogtitle = window.localStorage.blogtitle(i);
                const bloginfotxt = window.localStorage.getItem(blogtitle);
                //const infotxt = localStorage.infotxt(i);

                output.innerHTML += `${blogtitle}: ${bloginfotxt} <br/>`;
            }
        </script>--%>
    <%--        https://www.youtube.com/watch?v=k8yJCeuP6I8--%>


</layout:page-container>