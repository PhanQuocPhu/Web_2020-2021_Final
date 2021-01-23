
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<t:main>
    <jsp:attribute name="css">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%--        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/home.css">--%>

    </jsp:attribute>
    <jsp:body>
        <div class="bg" style="background-image: url('https://fullstack.edu.vn/assets/images/home-img.jpg');
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            top: 0;
            position: relative;
            left: 0;
            right: 0;
            bottom: 0;">
            <div class="overlay" style="background-color: rgba(0,0,0,.6);;
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            top: 0;
            left: 0;
            z-index: 2;
            position: absolute;
            right: 0;
            bottom: 0;"></div>
            <jsp:include page="../../views/partials/nav.jsp"/>
            <div class="container-fluid position-absolute" style="z-index: 3;">
                <div class="wrapper " style="">
                    <div class="text-white" style="margin-top: 187px">
                        <h4 class="" style="font-size: 14px;
                    line-height: 20px;
                    margin: 0 0 8px;">Cùng nhau tạo ra nhiều giá trị hơn cho xã hội!</h4>
                        <h1 class="" style="text-transform: uppercase; font-size: 3.2rem;
                    line-height: 4.6rem;
                    font-weight: 700;
                    margin: 1.6rem 0 2.4rem 0;">Học, học mãi, học nữa !</h1>
                        <a href="" class="btn" style="
                    padding: 12px 20px;
                    background-color: #f05123;
                    width: 180px;
                    border-radius: 26px;
                    font-size: 1rem;
                    text-transform: uppercase;
                    color: #fff;
                    font-weight: 600;
                    display: flex;
                    cursor: pointer !important;
                    height: 100%;
                    align-items: center;
                    justify-content: center;"
                        >KHÓA HỌC</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="module d-flex justify-content-around text-center pt-5">
                <div class="index-module">
                    
                    <img src="https://fullstack.edu.vn/images/feature-1.png?32035f34c520f99c24c91ef22921b547"
                         alt="" style="width: 76px; height: 76px;">
                    <h5 class="mt-5">
                        Trên 1000 học viên
                    </h5>
                </div>
                <div class="index-module">
                    <img src="https://fullstack.edu.vn/images/feature-2.png?b1b45d7724929e4208d151888ef1b6fc"
                         alt="" style="width: 76px; height: 76px">
                    <h5 class="mt-5">
                        9+ Khóa học dành cho bạn
                    </h5>
                </div>
                <div class="index-module">
                    <img src="https://fullstack.edu.vn/images/feature-3.png?1364c5701d95fced16b9d796fceff7d5"
                         alt="" style="width: 76px; height: 76px">
                    <h5 class="mt-5">
                        Học bất cứ lúc nào, học bất cứ đâu
                    </h5>
                </div>
            </div>
            <div class="course__highlight text-center " style="margin-top: 70px; margin-bottom: 50px">
                <h4 class="font-weight-bold">Khóa học nổi bật</h4>
                <p>Những khóa học có số lượng học viên theo học nhiều nhất và có phản hồi tích cực nhất</p>
            </div>


            <div class="row" >
                <c:forEach var ="c" items = "${course}">
                <div class="col-sm-4">
                  <div class="card">
                      <div class="card-header">
                          <a href="${pageContext.request.contextPath}/Admin/Product/Detail?id=${c.courseID}">
                          <img src="${c.url}" alt="" class="h-100 w-100 course_img">
                          </a>
                      </div>
                      <div class="card-body">
                          <div class="course_title ">
                              <a href="${pageContext.request.contextPath}/Admin/Product/Detail?id=${c.courseID}">
                                      ${c.courseName}
                              </a>
                          </div>
                          <div class="course_shortDes">
                                  ${c.short_Des}
                          </div>
                          <div class="course_detail d-flex mt-4">
                              <span class="course_lecturer">
                                  <i class="fa fa-user img-user"></i>
                                  Châu Đặng</span>
                             <span class="course_price ">
                                      <fmt:formatNumber value="${c.price}" type="number"/>
                                  <sup>vnd</sup>
                                 </span>
                              <span class="course_level">
                                <c:choose>
                                    <c:when test = "${c.levelID == 1}">
                                       Cơ bản
                                    </c:when>

                                    <c:otherwise>
                                       Nâng cao
                                    </c:otherwise>
                                </c:choose>
                              </span>
                          </div>
                      </div>
                  </div>
                </div>
                </c:forEach>
            </div>
            <div class="d-flex justify-content-center">
                <a href="${pageContext.request.contextPath}/Admin/Product" class="btn mb-5" style="
                    padding: 12px 20px;
                    background-color: #f05123;
                    width: 210px;
                    border-radius: 26px;
                    margin-top: 50px;
                    font-size: 1rem;
                    text-transform: uppercase;
                    color: #fff;
                    font-weight: 600;
                    display: flex;
                    height: 100%;
                    align-items: center;
                    justify-content: center;"
                >TẤT CẢ KHÓA HỌC</a>
            </div>
        </div>
    </jsp:body>
</t:main>