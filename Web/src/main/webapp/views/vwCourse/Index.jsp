<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/24/2021
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="d-flex justify-content-between">
        <h4>Course </h4>
        <a href="${pageContext.request.contextPath}/Admin/Course/Add"  class="btn btn-danger btn-outline-light">
            <i class="fa fa-plus" aria-hidden="true"></i>
        </a>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col ">Course Name</th>
            <th scope="col">Short Description</th>
            <%--        <th scope="col">Full Description</th>--%>
            <th scope="col">Price</th>
            <th scope="col">Category id</th>
            <%--        <th scope="col">Url</th>--%>
            <th>&nbsp</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var ="c" items = "${course}">
            <c:if test="${authUser.id == c.lecturerID}">
            <tr>
                <th scope="row">
                        ${c.courseName}
                </th>
                <td>
                        ${c.short_Des}
                </td>
                <td>
                        ${c.price}
                </td>
                <td>
                        ${c.catID}
                </td>
                <td class="text-right">
                    <a href="${pageContext.request.contextPath}/Admin/Course/Edit?id=${c.courseID}"
                       role ="button" class="btn btn-sm btn-primary">
                        <i class="fa fa-pencil" aria-hidden="true"></i>
                    </a>
                </td>
            </tr>
            </c:if>
        </c:forEach>
        </tbody>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    </table>
</div>

</body>
</html>


<%--<t:main>--%>
<%--    <jsp:attribute name="css">--%>
<%--         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--       <style type="text/css">--%>
<%--           .navbar {--%>
<%--               background-color: #151515 !important;--%>
<%--           }--%>
<%--           .course_title a:hover {--%>
<%--               text-decoration: none--%>
<%--           }--%>
<%--       </style>--%>
<%--    </jsp:attribute>--%>
<%--    <jsp:body>--%>
<%--        <jsp:include page="../../views/partials/nav.jsp"/>--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="d-flex justify-content-between">--%>
<%--                <h4>Category</h4>--%>
<%--                <a href="${pageContext.request.contextPath}/Admin/Course/Add"  class="btn btn-danger btn-outline-light">--%>
<%--                    <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                </a>--%>
<%--            </div>--%>
<%--            <c:choose>--%>
<%--                <c:when test ="${course.size() == 0}">--%>
<%--                    <div class="d-flex">--%>
<%--                        <img src="https://i.imgur.com/eNEfDn0.png" alt="" class="" style="margin: 20px auto">--%>
<%--                    </div>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <table class="table">--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th scope="col ">Course Name</th>--%>
<%--                            <th scope="col">Short Description</th>--%>
<%--                            <th scope="col">Full Description</th>--%>
<%--                            <th scope="col">Price</th>--%>
<%--                            <th scope="col">Category id</th>--%>
<%--                            <th scope="col">Url</th>--%>
<%--                            <th>&nbsp</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <c:forEach var ="c" items = "${course}">--%>
<%--                            <tr>--%>
<%--                                <th scope="row">--%>
<%--                                        ${c.courseName}--%>
<%--                                </th>--%>
<%--                                <td>--%>
<%--                                        ${c.short_Des}--%>
<%--                                </td>--%>
<%--                                <td>--%>
<%--                                        ${c.full_Des}--%>
<%--                                </td>--%>
<%--                                <td>--%>
<%--                                        ${c.price}--%>
<%--                                </td>--%>
<%--                                <td>--%>
<%--                                        ${c.catID}--%>
<%--                                </td>--%>
<%--                                <td class="text-right">--%>
<%--                                    <a href="${pageContext.request.contextPath}/Course/Edit?id=${c.courseID}"--%>
<%--                                       role ="button" class="btn btn-sm btn-primary">--%>
<%--                                        <i class="fa fa-pencil" aria-hidden="true"></i>--%>
<%--                                    </a>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--    </jsp:body>--%>
<%--</t:main>--%>
