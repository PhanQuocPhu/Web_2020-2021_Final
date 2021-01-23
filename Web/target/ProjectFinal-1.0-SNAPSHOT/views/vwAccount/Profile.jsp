<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/16/2021
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="user" scope="request" type="beans.User" />

<t:main>
    <jsp:attribute name="css">
        <style type="text/css">
            .user__img {
                height: 100px;
                width: 100px;
                border-radius: 50%;
                margin: 14px 0 20px;
            }
            label {
                display: block;
                margin: 20px 0;
            }
            .user__input-name {
                width: 100%;
                border: none;
                padding: 0 14px;
                height: 37px;
                border-radius: 10px;
                background-color: rgb(248, 245, 245);
            }
            .user__input-name:focus {
                outline: none;
            }
            .user__input-textarea {
                height: 100px;
                padding: 0 10px;
            }
            .user__name{
                font-size: 20px;
                margin: 0 54px;
                font-weight: 600;
            }
            .user__photos{
                margin: 0 78px;
            }
            .user__left {
                position: relative;
                text-align: center;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                background-color: rgb(232 159 24);
                padding-bottom: 20px;
            }
            .user__btn-upload {
                position: absolute;
                top: 79px;
                left: 302px;
                padding: 1px 6px;
                border: none;
                border-radius: 50%;
            }
            .user__btn-upload:focus {
                outline: none;
            }
            .user__photos {

            }
            .form-update {
                width: 547px;
                margin: 0 auto;
            }
            .btn.btn--primary {
                border-radius: 10px;
                font-size: 16px;
            }
            .user__group-input {
                display: block;
                margin-top: 20px;
            }
            .user__group-input--block {
                display: block;

            }

            .label-name {
                width: 20%;
                font-weight: 600;
                margin-top: 16px;
            }
            .label-name--block {
                width: 30%;
            }
            .user__description {
                margin-top: 10px;
                text-align: center;
            }
            .btn {
                font-size: 16px;
                width: 100px;
                height: 46px;
                margin: 10px 10px;
                border-radius: 10px;
                color: white;
            }
            .btn:hover {
                opacity: 0.8;
            }
            .btn + .btn  {
                margin-left: 20px;
            }
            .btn.btn-cancel {
                margin-left: 169px;
                align-items: center;
                display: inline-flex;
                justify-content: center;
                background-color: #efefef;
                color: black;
            }
            .user-icon {
                margin-right: 8px;
            }
            .btn--update {
                background-color: rgb(245, 164, 13);

            }
            .icon-file {
                margin-left: 4px;
            }
            /* .btn.btn-info {
                color: #fff;
                font-size: 18px;
                margin-top: 30px;
                margin-left: auto;
                margin-right: auto;
                width: 165px;
                background-color: #17a2b8;
                border-color: #17a2b8;
            } */
            .row {
                padding: 12px 0;
            }
            .dropdown-menu::before {
                right: 31px;
            }
            .name-user {
                font-size: 14px;
            }
            .topbar .dropdown .dropdown-menu {
                top: 125%;
                width: 142px;

            }

            .my-form {
                margin: 0 auto;
                font-size: 15px;
                border-radius: 10px;
                box-shadow:0 4px 16px 0 rgba(0, 0, 0, 0.4);
            }
            .navbar {
                background-color: #151515 !important;
            }
        </style>
    </jsp:attribute>
    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="infor">
            <div class="row">
                <div class="my-form">
                    <div class="col-12 user__left">
                        <form  method="POST" >
                            <img src="https://i.imgur.com/ZFSztUc.png"
                                    alt="not found" class="user__img">
<%--                            <button class="user__btn-upload" type="button"--%>
<%--                                    id="user__btn-upload" data-toggle="modal" data-target="#myModal">--%>
<%--                                <i class="fas fa-camera"></i>--%>
<%--                            </button>--%>
<%--                            <div class="modal fade" id="myModal" role="dialog">--%>
<%--                                <div class="modal-dialog">--%>
<%--                                    <div class="modal-content">--%>
<%--                                        <div class="modal-header">--%>
<%--                                            <button type="button" class="close" data-dismiss="modal">&times;--%>
<%--                                                Close--%>
<%--                                            </button>--%>

<%--                                        </div>--%>
<%--                                        <div class="modal-body">--%>
<%--                                            <div class="custom-file mb-4">--%>
<%--                                                <label for="customFile" class="label-choose-image">Choose--%>
<%--                                                    image<i class="far fa-file-image icon-file"></i></label> <input type="file" name="file"--%>
<%--                                                                                                                    class="custom-file-input" id="customFile">--%>
<%--                                            </div>--%>
<%--                                            <button class="btn btn-info" type="submit">Add<i class="fas fa-plus-circle icon-file"></i></button>--%>
<%--                                        </div>--%>
<%--                                        <div class="modal-footer">--%>

<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                </div>--%>
<%--                            </div>--%>
                        </form>
                        <div class="user__name"
                          >hi! </div>
                        <div class="user__photos" >
                        ${user.name}
                        </div>
                    </div>
                    <div class="col-12 ">
                        <div class="form-update">
                            <form action="" method="POST">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="user__group-input ">
                                            <label class="label-name label-name--block">User Name</label>
                                            <input class="user__input-name"
                                                   type="text" name="firstname">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="user__group-input ">
                                            <label class="label-name label-name--block">Password</label>
                                            <input class="user__input-name" type="text" disabled name="lastname">
                                        </div>
                                    </div>
                                </div>

                                <div class="user__group-input">
                                    <label  class="label-name">Full Name</label>
                                    <input row="6" class="user__input-name "
                                              name="decription" >
                                </div>
                                <div class="user__group-input">
                                    <label  class="label-name">Email</label>
                                    <input class="user__input-name"
                                           type="email" name="name" disabled>
                                </div>
                                <div class="user__group-input">
                                    <label  class="label-name">Day of Birth</label>
                                    <input row="6" class="user__input-name disabled"
                                              name="dob" >
                                </div>
                                <a href="${pageContext.request.contextPath}/Home" class="btn btn-cancel "><i
                                        class="fas fa-long-arrow-alt-left user-icon"></i>Back</a>
                                <button class="btn btn--update btn--primary" type="submit">
                                    <i class="fa fa-edit"></i>
                                    Update</button>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </jsp:body>
</t:main>
