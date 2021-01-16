<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/16/2021
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix ="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="product" scope="request" type="beans.Product" />

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>${product.proName}</h4>
            </div>
            <div class="card-body">
                <p class="card-text">
                    Gía bán:
                    <span class="text-danger font-weight-bold">
                        <fmt:formatNumber  value ="${product.price}" type ="number" />
                    </span>
                </p>
                <p class="card-text">Tồn kho: ${product.quantity}</p>
                <p class="card-text">${product.fullDes}</p>
            </div>
        </div>
    </jsp:body>
</t:main>

