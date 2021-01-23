<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/3/2021
  Time: 7:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:main>
    <jsp:attribute name="css">
        <style type="text/css">
        .navbar {
            background-color: #151515 !important;
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
                <c:when test ="${categories.size() == 0}">
                    <p> Không có dữ liệu</p>
                </c:when>
                <c:otherwise>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col ">Cate id</th>
                            <th scope="col">Name Category</th>
                            <th>&nbsp</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var ="c" items = "${categories}">
                            <tr>
                                <th scope="row">
                                        ${c.catID}
                                </th>
                                <td>
                                        ${c.catName}
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
