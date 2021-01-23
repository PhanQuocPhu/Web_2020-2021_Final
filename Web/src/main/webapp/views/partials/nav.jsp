<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/2/2021
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="authUser" scope="session" type="beans.User" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav id ="navbar"class="navbar navbar-expand-lg navbar-light d-flex justify-content-around" style="padding-left:  30px; padding-right: 30px; z-index: 999 ">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/Home">
                <img src="https://i.imgur.com/p8aGnla.png" alt="" id="img_logo" style="height: 34px; width: 136px">
            </a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link  text-white " href="${pageContext.request.contextPath}/Home">TRANG CHỦ <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  text-white"  href="${pageContext.request.contextPath}/Admin/Product">KHÓA HỌC</a>
                </li>
            </ul>

        </div>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2 text-white" type="search" placeholder="Search" aria-label="Search" style="background-color: rgba(0,0,0,.6);border-radius: 27px;
               width: 300px;">
            <button class="btn my-2 my-sm-0" type="submit">
                <i class="fa fa-search" style="color: #b80257; font-size: 20px"></i></button>
        </form>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <c:choose>
                <c:when test="${auth}">
                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle text-white nav-link " href="" role="button" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="https://i.imgur.com/ZFSztUc.png" alt=""style="height: 30px; width: 30px; border-radius: 50%">
                            Hi! <b>${authUser.username}</b>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin: 0.5rem 0 0;">
                            <c:if test = "${authUser.permission == 1}">
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/Admin/Category">
                                    <i class="fa fa-tasks"></i>
                                    Management category</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/Course">
                                    <i class="fa fa-tasks"></i>
                                    Management course</a>
                            </c:if>
                            <c:if test = "${authUser.permission == 2}">
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/Account/AddUser">
                                    <i class="fa fa-tasks"></i>
                                    Management</a>

                            </c:if>
                            <a class="dropdown-item " href="${pageContext.request.contextPath}/Account/Profile?id=${authUser.id}">
                                <i class="fa fa-user"></i>

                                Profile</a>
                            <a class="dropdown-item " href="javascript:$('#frmLogout').submit();">
                                <i class="fa fa-sign-out"></i>
                                Logout</a>
                        </div>
                    </li>
                </c:when>
                <c:otherwise >
                    <li class="nav-item ">
                        <a class="nav-link text-white" href="${pageContext.request.contextPath}/Account/Register">
                            <i class="fa fa-user-plus "></i>
                            Register <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link text-white" href="${pageContext.request.contextPath}/Account/Login">
                            <i class="fa fa-sign-in " aria-hidden="true"></i>
                            Login</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
</nav>

