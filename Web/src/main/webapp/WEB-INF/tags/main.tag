<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/3/2021
  Time: 6:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@tag pageEncoding="utf-8"%>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/home.css">--%>
    <jsp:invoke fragment="css"/>
    <style type="text/css">
        .sticky {
            position: fixed;
            top: 0;
            width: 100%;
        }
        .navbar {
            background-color: transparent;
            padding-right: 60px !important; ;
            padding-left: 60px !important;
            transition: all linear 0.2s;
        }
        .navbar.sticky {
            background-color: #151515 !important;
            transition: all linear 0.3s;
        }
        .btn:hover {
            opacity: 0.9;

        }
        .nav-item:hover .nav-link {
            color: #b80257 !important;
            transition: all linear 0.3s;
        }
        .nav-item:hover .ion {
            color: #b80257 !important;
            transition: all linear 0.3s;
        }
        .nav-link {
            padding: 5px 17px 5px !important;
            font-weight: 600;
            text-align: center;
        }
        .ion {
            font-size: 26px;
        }
        .title_footer {
            color: white;
        }
        .link_footer {
            color: rgba(255,255,255,.7);
            transition: all ease-in-out 0.2s;
        }
        .link_footer:hover {
            text-decoration: none;
            color: #b80257;
        }
        .card-header {
            padding: 0 !important;
        }
        .container-fluid {
            padding-right: 60px ;
            padding-left: 60px;
        }
        .course_title {
            font-weight: 600;
            text-align: justify;
            font-size: 20px;
        }
        .course_shortDe {
            text-align: justify;
        }
        .course_img {
            height: 218px !important;
            background-color: #fff;
            transition: all .3s ease-in-out;
            background-color: #ccc;
            border-top-left-radius: 7px !important;
            border-top-right-radius: 7px !important;
        }
        .card {
            border-top-left-radius: 7px !important;
            border-top-right-radius: 7px !important;
        }
        .card:hover .course_img {
            opacity: .7;
            transform: scale3D(1.01, 1.01, 1);

        }
        .footer {
            background-color: #151515;
        }
        .course_detail {
            justify-content: space-between;
            align-items: center;

        }
        .course_level {
            min-width: 89px;
            padding: 0 9px;
            text-align: center;
            color: #fff;
            height: 28px;
            background-color: #f47425;
            border-radius: 30px;
            display: inline-block;
            transition: all .3s ease-in-out;
        }
        .course_level:hover {
            color: #fff;
            transform: translateY(-5px);
        }
        .course_price {
            font-weight: 600;
        }
        .img-user {
            padding: 4px 8px;
            border: 1px solid;
            border-radius: 50%;
            font-size: 24px;
            color: #bab6b6;
        }
        .course_shortDes {
            height: 87px;
        }
        .card-body {
            padding: 0.7rem !important;
        }
        .col-sm-4 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <jsp:doBody />
    <jsp:include page="../../views/partials/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("navbar");

    function myFunction() {
        window.addEventListener('scroll',function(){
            if(window.pageYOffset>62){
                navbar.classList.add('sticky')
            }
            else{
                navbar.classList.remove('sticky')
            }
        });

    }
</script>
<jsp:invoke fragment="js"/>
</body>

</html>