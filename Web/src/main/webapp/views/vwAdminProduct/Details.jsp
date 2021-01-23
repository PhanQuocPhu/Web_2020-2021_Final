<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/16/2021
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix ="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="course" scope="request" type="beans.Course" />

<t:main>

    <jsp:attribute name="css">
         <style type="text/css">
             .navbar {
                 background-color: #151515 !important;
             }
             .card:hover .course_img {
                transform: none;
                 opacity: 1;
             }
             .breadcrumb {
                 margin: 20px 0;
                 padding: 8px 15px;
                 margin-bottom: 20px;
                 list-style: none;
                 letter-spacing: 3px;
                 background-color: #f5f5f5;
                 border-radius: 4px;
             }
             .level {
                 width: 100% !important;
                 display: block;
                 padding: 3px 10px;
                 border: 1px dotted #b80257 !important;
             }
             .course_image {
                 height: 418px !important;
                 border-top-left-radius: 7px !important;
                 border-top-right-radius: 7px !important;
                 margin-bottom: 60px;
             }
             span {
                 padding: 10px 0;
             }
             .group-btn {
                 display: flex;
                 margin: 20px 0 0 10px;

             }
             .btn-detail {
                 padding: 12px 20px;
                 background-color: #f05123;
                 width: 120px;
                 border-radius: 10px;
                 outline: none;
                 border: 1px solid;
                 font-size: 0.8rem;
                 text-transform: uppercase;
                 color: #fff;
                 font-weight: 600;
                 margin-right: 20px;
                 display: flex;
                 cursor: pointer !important;
                 height: 100%;
                 align-items: center;
                 justify-content: center;
                 transition: all linear 0.1s;

             }
             .btn-detail:hover {
                 opacity: 0.8;
             }
             .btn-detail--add {
                 background-color: white; color: black; width: 180px
             }
             .btn-detail--add:hover {
                 background-color: #f05123 !important;
                 color: white;
             }

        </style>
    </jsp:attribute>
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
            <div class="breadcrumb">
                    ${url}/${course.courseName}
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <img src="${course.url}" alt="" class="h-100 w-100 course_image" >
                </div>
                <div class="col-sm-6">
                    <h4>${course.courseName}</h4>
                    <span class="level" style="color: #b80257">
                        Trình độ:
                         <c:choose>
                             <c:when test = "${course.levelID == 1}">
                                 Cơ bản
                             </c:when>
                             <c:otherwise>
                                 Nâng cao
                             </c:otherwise>
                         </c:choose>
                    </span>
                    <span class="text-dark" style="display: block" >Học phí:</span>
                    <span class="text-danger font-weight-bold"style="font-size: 20px; display: block;
                    border-bottom: 1px dotted #b80257;">
                       <fmt:formatNumber  value ="${course.price}" type ="number" />
                        <sup style="color: black; font-weight: normal">vnđ</sup>
                    </span>
                    <div class="group-btn">
                        <button class="btn-detail btn-detail--add">
                            Thêm vào giỏ hàng
                        </button>
                        <button class="btn-detail">
                            Mua ngay
                        </button>
                    </div>
                    <span class="" style="display: block; font-size: 18px; font-weight: bold">
                        Mô tả nội dung khóa học:
                    </span>
                    <p class="card-text">${course.full_Des}</p>
                </div>
            </div>
        </div>
    </jsp:body>

</t:main>

