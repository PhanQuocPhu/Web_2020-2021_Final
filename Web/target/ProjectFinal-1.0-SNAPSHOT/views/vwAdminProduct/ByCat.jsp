<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/10/2021
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<t:main>
    <jsp:body>
        <div class="card">
            <c:choose>
                <c:when test ="${products.size() == 0}">
                    <div class="card-header">
                        <p> Không có dữ liệu</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-header">
                        Product
                    </div>
                    <div class="card-body">
                        <div class="row ">
                            <c:forEach var ="c" items="${products}">
                                <div class="col-sm-4 mb-4">
                                    <div class="card h-100">
                                        <img src="${c.url}" alt="${c.courseName}" class="card-img-top"/>
                                        <div class="card-body">
                                            <h6 class="card-title">${c.courseName}</h6>
                                            <h5 class="card-title text-value">
                                                <fmt:formatNumber value="${c.price}" type="number"/>
                                            </h5>
                                            <p class="card-text">${c.short_Des}</p>
                                        </div>
                                        <div class="card-footer text-muted">
                                            <a href="${pageContext.request.contextPath}/Product/Detail?id=${c.courseID}" class="btn btn-sm btn-outline-primary" role = "button">
                                                <i class="fa fa-eye" aria-hidden="true"></i> Details
                                            </a>
                                            <a href="#" class="btn btn-sm btn-outline-success" role = "button">
                                                <i class="fa fa-eye" aria-hidden="true"></i> Add to cart
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <nav aria-label="Page navigation example d-flex">
                        <ul class="pagination justify-content-center">
                                <c:if test="${currentPage !=1}">
                                    <li class="page-item">
                                        <a class="page-link" href="?id=${catID}&page=${currentPage-1}" tabindex="-1">
                                            <i class="fa fa-fast-backward" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </c:if>
                            <c:forEach var="p" items="${pages}">
                                <c:choose>
                                    <c:when test ="${p == currentPage}">
                                        <li class="page-item active">
                                            <a class="page-link" href="">${p}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item">
                                            <a class="page-link" href="?id=${catID}&page=${p}">${p}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
<%--                            <c:if test="${currentPage < pages}">--%>
                                <li class="page-item">
                                    <a class="page-link" href="?id=${catID}&page=${currentPage+1}" tabindex="-1">
                                        <i class="fa fa-fast-forward" aria-hidden="true"></i>
                                    </a>
                                </li>
<%--                            </c:if>--%>
                        </ul>
                    </nav>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>
