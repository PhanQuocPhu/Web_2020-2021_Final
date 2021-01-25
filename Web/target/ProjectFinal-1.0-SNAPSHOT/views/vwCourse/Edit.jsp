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
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <body>
        <div class="container">
            <div class="row justify-content: center;
            align-items: center;" >
                <form method="post" class="mt-4" style="width: 700px; margin: 0 auto;">
                    <div class="card">
                        <div class="card-header" style="height: 50px;text-align: center; background-color: #b80257;color: white; padding: 0">
                            <h4 style="line-height: 50px">Edit infomation Course</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <input type="text" class="form-control" id="txtCourseID" name="CourseID" readonly value="${course.courseID}">
                            </div>
                            <div class="form-group">
                                <label for="txtCatName">Name</label>
                                <input type="text" class="form-control" id="txtCatName" name="CourseName" autofocus value="${course.courseName}">
                            </div>
                            <div class="form-group">
                                <label for="txtShortDes">Short Description</label>
                                <input type="text" class="form-control " id="txtShortDes" name="Short_Des" autofocus value="${course.short_Des}">
<%--                                </input>--%>
                            </div>
                            <div class="form-group">
                                <label for="txtFullDes">Full Description</label>
                                <input type="text" class="form-control" id="txtFullDes" name="Full_Des" autofocus value="${course.full_Des}">
<%--                                </input>--%>

                            </div>
                            <div class="form-group">
                            <label for="txtPrice">Price</label>
                            <input type="text" class="form-control" id="txtPrice" name="Price" autofocu value="${course.price}" >
                        </div>
                            <div class="form-group">
                            <label for="txtCatID">CatID</label>
                            <input type="text" class="form-control" id="txtCatID" name="CatID" autofocus value="${course.catID}">
                        </div>
                            <div class="form-group">
                                <label for="txtLecturerID">Lecturer id</label>
                                <input type="text" class="form-control" id="txtLecturerID" name="LecturerID" disabled autofocus value="${course.lecturerID}">
                            </div>
                            <div class="form-group">
                            <label for="txtLevelID">Level ID (1: cơ bản, 2: nâng cao)</label>
                            <input type="text" class="form-control" id="txtLevelID" name="LevelID" autofocus value="${course.levelID}">
                        </div>
                            <div class="form-group">
                                <label for="url">url</label>
                                <input type="text" class="form-control" id="url" name="Url" autofocus value="${course.url}">
                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Course/" role="button">
                            <i class="fa fa-backward" aria-hidden="true"></i>
                            List
                        </a>
                        <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Course/Delete">
                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                            Delete
                        </button>
                        <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Course/Update">
                            <i class="fa fa-check" aria-hidden="true"></i>
                            Save
                        </button>
                    </div>
            </form >
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.tiny.cloud/1/ml21qe68qmfs4vhxnafuy02pqqrrgbwf5oi4bbnw7urhii3c/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<%--        <script>--%>
<%--            tinymce.init({--%>
<%--                selector: '#txtShortDes',--%>
<%--                plugins: 'a11ychecker advcode table advlist lists image media anchor hr link autoresize',--%>
<%--                toolbar: 'a11ycheck | formatselect bold forecolor backcolor | bullist numlist | link image media anchor | table | code',--%>
<%--                a11y_advanced_options: true,--%>
<%--                a11ychecker_html_version: 'html5',--%>
<%--                a11ychecker_level: 'aaa',--%>
<%--                height: 600,--%>
<%--                content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'--%>
<%--            });--%>
<%--            tinymce.init({--%>
<%--                selector: '#txtFullDes',--%>
<%--                plugins: 'a11ychecker advcode table advlist lists image media anchor hr link autoresize',--%>
<%--                toolbar: 'a11ycheck | formatselect bold forecolor backcolor | bullist numlist | link image media anchor | table | code',--%>
<%--                a11y_advanced_options: true,--%>
<%--                a11ychecker_html_version: 'html5',--%>
<%--                a11ychecker_level: 'aaa',--%>
<%--                height: 600,--%>
<%--                content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'--%>
<%--            });--%>
<%--        </script>--%>
    </body>
</html>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<jsp:useBean id="course" scope="request" type="beans.Course"/>--%>



<%--<t:main>--%>
<%--      <jsp:attribute name="css">--%>
<%--        <style type="text/css">--%>
<%--            .navbar {--%>
<%--                background-color: #151515 !important;--%>
<%--            }--%>
<%--        </style>--%>
<%--    </jsp:attribute>--%>
<%--    <jsp:body>--%>
<%--        <jsp:include page="../../views/partials/nav.jsp"/>--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="row justify-content: center;--%>
<%--    align-items: center;" >--%>
<%--                <form method="post" class="mt-4" style="width: 600px; margin: 0 auto;">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-header" style="height: 50px;text-align: center; background-color: #b80257;color: white">--%>
<%--                            <h4 style="line-height: 50px">Edit infomation Course</h4>--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <div class="form-group">--%>
<%--                                <input type="text" class="form-control" id="txtCourseID" name="CourseID" readonly value="${course.courseID}">--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="txtCatName">Name</label>--%>
<%--                                <input type="text" class="form-control" id="txtCatName" name="CourseName" autofocus value="${course.courseName}">--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="txtShortDes">Short Description</label>--%>
<%--                                <textarea type="text" class="form-control" id="txtShortDes" name="Short_Des" autofocus value="${course.short_Des}">--%>
<%--                                </textarea>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="txtFullDes">Full Description</label>--%>
<%--                                <textarea type="text" class="form-control" id="txtFullDes" name="Full_Des" autofocus value="${course.full_Des}">--%>
<%--                                Welcome to TinyMCE!--%>
<%--                              </textarea>--%>

<%--                            </div><div class="form-group">--%>
<%--                            <label for="txtPrice">Price</label>--%>
<%--                            <input type="text" class="form-control" id="txtPrice" name="price" autofocu value="${course.price}" >--%>
<%--                        </div><div class="form-group">--%>
<%--                            <label for="txtCatID">CatID</label>--%>
<%--                            <input type="text" class="form-control" id="txtCatID" name="CatID" autofocus value="${course.catID}">--%>
<%--                        </div><div class="form-group">--%>
<%--                            <label for="txtLevelID">Level ID</label>--%>
<%--                            <input type="text" class="form-control" id="txtLevelID" name="LevelID" autofocus value="${course.levelID}">--%>
<%--                        </div>--%>
<%--                        </div><div class="form-group">--%>
<%--                        <label for="url">url</label>--%>
<%--                        <input type="text" class="form-control" id="url" name="Url" autofocus value="${course.url}">--%>
<%--                    </div>--%>
<%--                        </div>--%>
<%--                        <div class="card-footer">--%>
<%--                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Category/" role="button">--%>
<%--                                <i class="fa fa-backward" aria-hidden="true"></i>--%>
<%--                                List--%>
<%--                            </a>--%>
<%--                            <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">--%>
<%--                                <i class="fa fa-trash-o" aria-hidden="true"></i>--%>
<%--                                Delete--%>
<%--                            </button>--%>
<%--                            <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Category/Update">--%>
<%--                                <i class="fa fa-check" aria-hidden="true"></i>--%>
<%--                                Save--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form >--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </jsp:body>--%>
<%--</t:main>--%>

