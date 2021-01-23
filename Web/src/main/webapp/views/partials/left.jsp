<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/2/2021
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">Categories</h5>
    </div>
    <ul class="list-group list-group-flush">
      <c:forEach var ="c" items="${categoriesWithDetails}">
          <a href="${pageContext.request.contextPath}/Admin/Product/ByCat?id=${c.catID}" class="list-group-item list-group-item-action">
            <i class="fa fa-caret-right" aria-hidden="true"></i>
              ${c.catName}
          </a>
      </c:forEach>
    </ul>

</div>
