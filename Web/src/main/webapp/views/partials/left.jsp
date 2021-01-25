<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/2/2021
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="card">
    <div class="list-group list-group-flush">
      <c:forEach var ="c" items="${catetype}">
          <div class="list-group-item list-group-item-action showcategory d-flex justify-content-between">
                 <span> ${c.cat_type_name}</span>
              <ul class="list">
                  <ul class="list-item">
                   <c:forEach var ="d" items ="${categorybyid}">
                       <c:if test="${d.id_type == c.id_type}">
                               <li class="item">
                                   <a href="${pageContext.request.contextPath}/Admin/Product/ByCat?id=${d.catID}">
                                           ${d.catName}
                                   </a>
                               </li>
                       </c:if>
                   </c:forEach>
                  </ul>
              </ul>
              <i class="fa fa-caret-right"></i>
          </div>
      </c:forEach>
    </div>

</div>
