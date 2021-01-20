<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/20/2021
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
     <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
         <style type="text/css">
             .navbar {
                 background-color: #151515 !important;
             }
             .card-header {
                 background-color: #b80257;
                 height: 50px;
                 color: #fff;
             }
             .btn-add {
                 background-color: #ffffff;
                 border: 1px solid #b80257;
                 color: #151515;
             }
             .btn-add:hover {
                 background-color: #b80257;
                 color: white;
             }
         </style>

  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>

        <script>
            $('#txtDOB').datetimepicker({
                format: 'd/m/Y',
                timepicker: false,
                mask: true,
            });
            $('#frmRegister').on('submit', function (e){
                e.preventDefault();
                const username = $('#txtUserName').val();
                if (username.length === 0) {
                    return;
                }
                $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                    if (data === true) {
                        $('#frmRegister').off('submit').submit();
                    } else {
                        alert('Not available.');
                    }
                });
            })
            $('#txtUsername').select();
        </script>
</jsp:attribute>
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
            <div class="row d-flex justify-content-center">
                <div class="col-sm-6 mt-4">
                    <div class="card">
                        <div class="card-header d-flex justify-content-center align-items-center">
                            <div class="d-flex justify-content-between">
                                <h4>Add user</h4>
                            </div>
                        </div>
                        <form method="POST" id="frmRegister">
                            <div class="card-body">
                                <h5>Account</h5>
                                <div class="form-group">
                                    <label for="txtUserName">Username: </label>
                                    <input type="text" class="form-control" id="txtUserName" name = "username" >
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword">Password: </label>
                                    <input type="password" class="form-control" id="txtPassword" name = "password" >
                                </div>
                                <div class="form-group">
                                    <label for="txtConfirm">Confirm: </label>
                                    <input type="password" class="form-control" id="txtConfirm" name = "confirm" >
                                </div>
                                <h5>Person Infomation</h5>

                                <div class="form-group">
                                    <label for="txtDOB">Date of Birth: </label>
                                    <input type="text" class="form-control" id="txtDOB" name = "dob" >
                                </div>
                                <div class="form-group">
                                    <label for="txtName">Fullname </label>
                                    <input type="text" class="form-control" id="txtName" name = "name" >
                                </div>
                                <div class="form-group">
                                    <label for="txtEmail">Email: </label>
                                    <input type="text" class="form-control" id="txtEmail" name = "email" >
                                </div>
                                <hr />

                                <div class="card-footer">
                                    <a href="${pageContext.request.contextPath}/Home" class="btn btn-outline-success">
                                        <i class="fa fa-backward"></i> Back
                                    </a>
                                    <button type="submit" class="btn btn-add">
                                        <i class="fa fa-check"></i>
                                        Add user</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </jsp:body>
</t:main>
