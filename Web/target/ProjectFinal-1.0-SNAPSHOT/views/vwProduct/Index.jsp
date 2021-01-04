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
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<t:main>
    <jsp:body>
        <div class="card">

            <c:choose>
                <c:when test ="${products.size() == 0}">
                    <div class="card-header">
                    <p> Không có dữ liệu</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-header">
                        Product
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col ">Product id</th>
                                <th scope="col"> Product Name</th>
                                <th scope="col"> Description</th>
                                <th scope="col" class="text-right">Price</th>
                                <th scope="col" class="text-right">Quantity</th>
                                <th scope="col">&nbsp</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var ="c" items = "${products}">
                                <tr>
                                    <th scope="row">
                                            ${c.proID}
                                    </th>
                                    <td>
                                            ${c.proName}
                                    </td>
                                    <td>
                                            ${c.tinyDes}
                                    </td>
                                    <td class="text-right">
                                        <fmt:formatNumber value="${c.price}" type="number"/>
                                    </td>
                                    <td>
                                            ${c.quantity}
                                    </td>
                                    <td class="text-right">
                                        <a  role ="button"
                                            class="btn btn-sm btn-primary">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>


    </jsp:body>
</t:main>
