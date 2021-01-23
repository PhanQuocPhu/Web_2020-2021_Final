<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/23/2021
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@tag pageEncoding="utf-8"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@attribute name="css" fragment="true" required="false" %>--%>
<%--<%@attribute name="js" fragment="true" required="false" %>--%>
<%--<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>--%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .card-header {
            padding: 0;
        }
    </style>
</head>
<body>

        <div class="container-fluid content">
<%--            <div class="row">--%>
<%--                <div class="col-sm-4">--%>
<%--                    hihi--%>
<%--                </div>--%>
<%--                <div class="col-sm-8">--%>
                    <div class="row">
                        <c:forEach var ="c" items = "${productlist}">
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-header">
                                        <img src="${c.url}" alt="" class="w-100">
                                    </div>
                                    <div class="card-body">
                                        <div class="">
                                                ${c.courseName}
                                        </div>
                                        <div class="course_shortDes">
                                                ${c.short_Des}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
<%--                </div>--%>
<%--            </div>--%>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            // window.onscroll = function() {myFunction()};
            //
            // var navbar = document.getElementById("navbar");
            //
            // function myFunction() {
            //     window.addEventListener('scroll',function(){
            //         if(window.pageYOffset>62){
            //             navbar.classList.add('sticky')
            //         }
            //         else{
            //             navbar.classList.remove('sticky')
            //         }
            //     });
            //
            // }
        </script>
<%--        <jsp:invoke fragment="js"/>--%>
</body>
</html>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>--%>

<%--<t:main>--%>
<%--    <jsp:body>--%>
<%--        <div class="card">--%>
<%--            <c:choose>--%>
<%--                <c:when test ="${productlist.size() == 0}">--%>
<%--                    <div class="card-header">--%>
<%--                        <p> Không có dữ liệu</p>--%>
<%--                    </div>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <div class="card-header">--%>
<%--                        Product--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="row ">--%>
<%--                            <c:forEach var ="c" items="${productlist}">--%>
<%--                                <div class="col-sm-4 mb-4">--%>
<%--                                    <div class="card h-100">--%>
<%--                                        <img src="${c.url}" alt="${c.courseName}" class="card-img-top"/>--%>
<%--                                        <div class="card-body">--%>
<%--                                            <h6 class="card-title">${c.courseName}</h6>--%>
<%--                                            <h5 class="card-title text-value">--%>
<%--                                                <fmt:formatNumber value="${c.price}" type="number"/>--%>
<%--                                            </h5>--%>
<%--                                            <p class="card-text">${c.short_Des}</p>--%>
<%--                                        </div>--%>
<%--                                        <div class="card-footer text-muted">--%>
<%--                                            <a href="${pageContext.request.contextPath}/Course/Detail?id=${c.courseID}" class="btn btn-sm btn-outline-primary" role = "button">--%>
<%--                                                <i class="fa fa-eye" aria-hidden="true"></i> Details--%>
<%--                                            </a>--%>
<%--                                            <a href="#" class="btn btn-sm btn-outline-success" role = "button">--%>
<%--                                                <i class="fa fa-eye" aria-hidden="true"></i> Add to cart--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </c:forEach>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <nav aria-label="Page navigation example d-flex">--%>
<%--                        <ul class="pagination justify-content-center">--%>
<%--                            <c:if test="${currentPage !=1}">--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="?id=${catID}&page=${currentPage-1}" tabindex="-1">--%>
<%--                                        <i class="fa fa-fast-backward" aria-hidden="true"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </c:if>--%>
<%--                            <c:forEach var="p" items="${pages}">--%>
<%--                                <c:choose>--%>
<%--                                    <c:when test ="${p == currentPage}">--%>
<%--                                        <li class="page-item active">--%>
<%--                                            <a class="page-link" href="">${p}</a>--%>
<%--                                        </li>--%>
<%--                                    </c:when>--%>
<%--                                    <c:otherwise>--%>
<%--                                        <li class="page-item">--%>
<%--                                            <a class="page-link" href="?id=${catID}&page=${p}">${p}</a>--%>
<%--                                        </li>--%>
<%--                                    </c:otherwise>--%>
<%--                                </c:choose>--%>

<%--                            </c:forEach>--%>
<%--                                &lt;%&ndash;                            <c:if test="${currentPage < pages}">&ndash;%&gt;--%>
<%--                            <li class="page-item">--%>
<%--                                <a class="page-link" href="?id=${catID}&page=${currentPage+1}" tabindex="-1">--%>
<%--                                    <i class="fa fa-fast-forward" aria-hidden="true"></i>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                                &lt;%&ndash;                            </c:if>&ndash;%&gt;--%>
<%--                        </ul>--%>
<%--                    </nav>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--    </jsp:body>--%>
<%--</t:main>--%>
