<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/16/2021
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="col-sm-4">
            <c:if test="${hasError}">
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>
                    Login failed! ${errorMessage}
                </strong>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            </c:if>
        <form  method="post">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control form-control-lg border-right-0" placeholder="User name" name="username" autofocus>
                        <span class="input-group-append">
                            <div class="input-group-text bg-white">
                                <i class="fa fa-user" aria-hidden="true">
                                </i>
                            </div>
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control form-control-lg border-right-0" placeholder="Password" name="password" autofocus>
                        <span class="input-group-append">
                            <div class="input-group-text bg-white">
                                <i class="fa fa-key" aria-hidden="true">
                                </i>
                            </div>
                        </span>
                    </div>
                </div>
                <div class="form-group d-flex justify-content-center">
                    <div class="flex-fill mr-4">
                        <a id="" class="btn btn-outline-info btn-block" href="${pageContext.request.contextPath}/Home" role="button" >
                            <i class="fa fa-home" aria-hidden="true"></i>
                            Home
                        </a>
                    </div>
                    <div class="flex-fill" ml-4>
                        <button type="submit" class="btn btn-info btn-block">
                            <i class="fa fa-sign-in"></i> Sign In
                        </button>
                    </div>
                </div>
        </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
