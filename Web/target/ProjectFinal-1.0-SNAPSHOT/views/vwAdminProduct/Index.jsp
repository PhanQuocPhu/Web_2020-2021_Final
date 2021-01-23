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
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
            <div class="row" >
                <c:forEach var ="c" items = "${course}">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <img src="${c.url}" alt="" class="h-100 w-100 course_img">
                            </div>
                            <div class="card-body">
                                <div class="course_title ">
                                        ${c.courseName}
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
    </jsp:body>
</t:main>