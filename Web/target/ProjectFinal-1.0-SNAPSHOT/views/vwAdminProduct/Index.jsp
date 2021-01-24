<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/23/2021
  Time: 7:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix ="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<t:main>
     <jsp:attribute name="css">
         <style type="text/css">
             .navbar {
                 background-color: #151515 !important;
             }
             .course_title {
                 text-align: left !important;
                 height: 55px !important;
             }
             .course_shortDes {
                 height: 100px !important;
             }
             .course_detail {
                 font-size: 13px !important;
             }
             .img-user {
                 padding: 3px 7px !important;
                 font-size: 19px !important;
             }
             .course_level {
                 line-height: 28px !important;
                 min-width: 89px !important;
             }
             .href:hover{
                 text-decoration: none;
             }
             .col-sm-4 {
                 padding-left: 10px;
                 padding-right: 10px;
             }
             .list-group-item {
                 font-weight: bold;
                 position: relative;
                 font-size: 18px;
                 background-color: #f8f9fa;
                 padding-bottom: 10px;
             }
            li a {
                color: black !important;
            }
             li a:hover{
                 text-decoration: none;
                 cursor: pointer;
                 color: #f05123 !important;
             }

             .list span {
                 color: #4d3f3f;
                 display: block;
             }
             .list {
                 display: none;
                 position: absolute;
                 right: -253px;
                 top: 0px;
                 background-color: #f8f9fa;
                 border-radius: 8px;
                 list-style: none;
                 z-index: 12;
                 padding: 4px ;
             }
             .list-group-item:hover ul{
                    display: block;
             }
             .list-item {
                 width: 250px;
                 list-style: none;
             }
             .list-item li{
                 transition: all linear 0.4s;
             }
             .list-item li a {
                 font-size: 15px;
                 font-weight: normal;

             }
             .list-item li:hover {
                 transform: translateX(10px);
             }


         </style>
    </jsp:attribute>
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
            <div class="row mt-5" >
                <div class="row">
                    <div class="col-sm-3">
                        <jsp:include page="../../views/partials/left.jsp" />
                    </div>
                    <div class="col-sm-9">
                        <div class="row">
                            <c:forEach var ="c" items = "${course}">
                                <div class="col-sm-4 mt-3 mb-3">
                                    <div class="card">
                                        <div class="card-header">
                                            <a href="${pageContext.request.contextPath}/Admin/Product/Detail?id=${c.courseID}">
                                                <img src="${c.url}" alt="" class="h-100 w-100 course_img">
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="course_title ">
                                                <a href="${pageContext.request.contextPath}/Admin/Product/Detail?id=${c.courseID}" class="href">
                                                        ${c.courseName}
                                                </a>
                                            </div>
                                            <div class="course_shortDes">
                                                    ${c.short_Des}
                                            </div>
                                            <div class="course_detail d-flex mt-4">
                                  <span class="course_lecturer">
                                      <i class="fa fa-user img-user"></i>
                                      Châu Đặng</span>
                                                <span class="course_price ">
                                          <fmt:formatNumber value="${c.price}" type="number"/>
                                      <sup>vnd</sup>
                                     </span>
                                                <span class="course_level">
                                    <c:choose>
                                        <c:when test = "${c.levelID == 1}">
                                            Cơ bản
                                        </c:when>

                                        <c:otherwise>
                                            Nâng cao
                                        </c:otherwise>
                                    </c:choose>
                                  </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </div>
<%--            <nav aria-label="Page navigation example d-flex">--%>
<%--                <ul class="pagination justify-content-center">--%>
<%--                    <c:if test="${currentPage2 !=1}">--%>
<%--                        <li class="page-item">--%>
<%--                            <a class="page-link" href="recordsPerPage=${recordsPerPage}&Page=${currentPage2-1}" tabindex="-1">--%>
<%--                                <i class="fa fa-fast-backward" aria-hidden="true"></i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </c:if>--%>
<%--                    <c:forEach var="p" items="${noOfPages}">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test ="${p == currentPage2}">--%>
<%--                                <li class="page-item active">--%>
<%--                                    <a class="page-link" href="">${p}</a>--%>
<%--                                </li>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="?recordsPerPage=${recordsPerPage}&Page=${p}">${p}</a>--%>
<%--                                </li>--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>

<%--                    </c:forEach>--%>
<%--                    <li class="page-item">--%>
<%--                        <a class="page-link" href="&page=${currentPage2+1}" tabindex="-1">--%>
<%--                            <i class="fa fa-fast-forward" aria-hidden="true"></i>--%>
<%--                        </a>--%>

<%--                    </li>--%>
<%--                </ul>--%>
<%--            </nav>--%>
        </div>
    </jsp:body>
</t:main>