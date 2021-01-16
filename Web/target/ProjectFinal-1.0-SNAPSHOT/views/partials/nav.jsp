<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/2/2021
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="authUser" scope="session" type="beans.User" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Hidden brand</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <c:choose>
            <c:when test="${auth}">
                <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                <li class="nav-item dropdown">
                    <a class="dropdown-toggle nav-link" href="" role="button" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Hi, <b>${authUser.username} !</b>
                    </a>

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile">
                            <i class="fa fa-user"></i>

                            Profile</a>
                        <a class="dropdown-item" href="javascript:$('#frmLogout').submit();">
                            <i class="fa fa-sign-out"></i>
                            Logout</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </c:when>
            <c:otherwise >
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Account/Register">
                        <i class="fa fa-user-plus"></i>
                        Register <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Account/Login">
                        <i class="fa fa-sign-in" aria-hidden="true"></i>
                        Login</a>
                </li>
            </c:otherwise>
        </c:choose>


    </ul>
<%--    <form class="form-inline my-2 my-lg-0">--%>
<%--        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
<%--    </form>--%>
</div>
</nav>

