<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/3/2021
  Time: 6:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class="row justify-content: center;
    align-items: center;" >
                <form method="post" class="mt-4" style="width: 600px; margin: 0 auto;">
                    <div class="card">
                        <div class="card-header" style="height: 50px;text-align: center; background-color: #b80257;color: white">
                            <h4 style="line-height: 50px">Edit infomation Category</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="txtCatName">Category</label>
                                <input type="text" class="form-control" id="txtCatName" name="CatName" autofocus >
                            </div>
                            <div class="form-group">
                                <label for="txtCatType">Cate Type</label>
                                <input type="text" class="form-control" id="txtCatType" name="id_type" autofocus >
                            </div>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                                <i class="fa fa-backward" aria-hidden="true"></i>
                                List
                            </a>

                            <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Category/Add">
                                <i class="fa fa-check" aria-hidden="true"></i>
                                Save
                            </button>
                        </div>
                    </div>
                </form >
            </div>

        </div>
    </jsp:body>
</t:main>

