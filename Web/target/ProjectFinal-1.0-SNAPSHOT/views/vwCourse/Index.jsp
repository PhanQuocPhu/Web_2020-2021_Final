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

<t:main>
    <jsp:attribute name="css">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
       <style type="text/css">
           .navbar {
               background-color: #151515 !important;
           }
           .course_title a:hover {
               text-decoration: none
           }
       </style>
    </jsp:attribute>
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
            <div class="d-flex justify-content-between">
                <h4>Category</h4>
                <a href="${pageContext.request.contextPath}/Admin/Category/Add"  class="btn btn-danger btn-outline-light">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
            <c:choose>
                <c:when test ="${cate_type.size() == 0}">
                    <div class="d-flex">
                        <img src="https://i.imgur.com/eNEfDn0.png" alt="" class="" style="margin: 20px auto">
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col ">Cate id</th>
                            <th scope="col">Name Category</th>
                            <th scope="col">Type Category</th>

                            <th>&nbsp</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var ="c" items = "${cate_type}">
                            <tr>
                                <th scope="row">
                                        ${c.catID}
                                </th>
                                <td>
                                        ${c.catName}
                                </td>
                                <td>
                                        ${c.id_type}
                                </td>
                                <td class="text-right">
                                    <a href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}"
                                       role ="button" class="btn btn-sm btn-primary">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>
