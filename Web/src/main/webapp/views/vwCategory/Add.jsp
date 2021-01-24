<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/3/2021
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/3/2021
  Time: 7:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp useBean id ="categories" scope ="request" type ="java.util.List<beans.Category">
<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between">
                    <h4>New Category</h4>
                </div>
            </div>
            <div class="card-body">
                <form method="POST" >
                    <div class="form-group">
                        <label for="txtCatName">Name Category: </label>
                        <input type="text" class="form-control" id="txtCatName" name = "CatName" autofocus>
                    </div>
                    <div class="form-group">
                        <label for="txtidtype">Name Category: </label>
                        <input type="text" class="form-control" id="txtidtype" name = "id_type" autofocus>
                    </div>
                    <div class="card-footer">
                        <a href="${pageContext.request.contextPath}/Admin/Category"  role = "button" class="btn btn-primary">
                            <i class=""></i>
                            Forward</a>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>





    </jsp:body>
</t:main>
