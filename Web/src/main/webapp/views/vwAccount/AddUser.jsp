
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main><jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
    <style type="text/css">
        .navbar {
            background-color: #151515 !important;
        }
        .InValid {
            color: red !important;
            height: 20px;
            visibility: hidden;

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
                        alert('Invalid username.');
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
                var c = false;
                function usernameCheck() {
                    const usernamevalid = document.getElementById("txtUserName");
                    const invalidus = document.getElementById("InValidUserName");

                    if(usernamevalid.value.length === 0) {
                        invalidus.style.visibility = 'visible';
                        invalidus.innerHTML = 'First name is required.'
                    }
                    else {
                        invalidus.style.visibility = 'hidden';
                        c = true;
                    }
                }
                const password = document.getElementById("txtPassword");
                const invalid = document.getElementById("InValid");
                function minPassword() {
                    if(password.value.length === 0) {
                        invalid.style.visibility = 'visible';
                        invalid.innerHTML = 'Password is required.'
                    }
                    else if(password.value.length > 0 && password.value.length < 8){
                        invalid.style.visibility = 'visible';
                        invalid.innerHTML = 'Min Password is 8.'

                    }
                    else {
                        invalid.style.visibility = 'hidden';
                        c = true;
                    }
                }
                function confimPassword() {
                    const confirmpassword = document.getElementById("txtConfirm");
                    const confirmPasswordInvalid = document.getElementById("InValidConf");
                    if(confirmpassword.value.length === 0) {
                        confirmPasswordInvalid.style.visibility = 'visible';
                        confirmPasswordInvalid.innerHTML = 'Confirm Password is required.'
                    }
                    else if(confirmpassword.value != password.value) {
                        confirmPasswordInvalid.style.visibility = 'visible';
                        confirmPasswordInvalid.innerHTML = 'Password not match.'
                    }
                    else {
                        confirmPasswordInvalid.style.visibility = 'hidden';
                        c = true;
                    }
                }
                function allLetter() {
                    const name = document.getElementById("txtName");
                    const inValidName = document.getElementById("InValidName");
                    if(name.value.length === 0) {
                        inValidName.style.visibility = 'visible';
                        inValidName.innerHTML = 'Name is required.'
                    }
                    else {
                        inValidName.style.visibility = 'hidden';

                    }
                }
                function ValidateEmail() {
                    const mailformat = /^([A-Za-z0-9._%+-])+@([A-Za-z]{5})+\.([A-Za-z]{3})$/;
                    const txtEmail =  document.getElementById("txtEmail");
                    const InValidEmail =  document.getElementById("InValidEmail");

                    if(txtEmail.value.length === 0) {
                        InValidEmail.style.visibility = 'visible';
                        InValidEmail.innerHTML = 'Email is required.'
                    }
                    else if (txtEmail.value.match(mailformat)) {
                        InValidEmail.style.visibility = 'hidden';
                        c = true;
                    } else {
                        InValidEmail.style.visibility = "visible";
                        InValidEmail.innerHTML = 'Please enter a valid email !'
                    }
                }
                mailid = document.getElementById("submit");
            </script>
        </jsp:attribute>

    <jsp:body>
        <jsp:include page="../../views/partials/nav.jsp"/>
        <div class="container-fluid">
        <div class="row d-flex justify-content-center" >
            <div class="card" style="width: 600px">
                <div class="card-header" style="display: flex;
                        justify-content: center;height: 50px; background-color: #b80257;color: #fff">
                    <div class="align-items-center ">
                        <h4 class=" "style="line-height: 50px" >Add new Lecturer</h4>
                    </div>
                </div>
                <form method="POST" id="frmRegister">
                    <div class="card-body">
                        <h5>Account</h5>
                        <div class="form-group">
                            <label for="txtUserName">Username: </label>
                            <input type="text" class="form-control" id="txtUserName" name = "username" onblur="usernameCheck()">
                        </div>
                        <div class="InValid" id="InValidUserName">
                        </div>
                        <div class="form-group">
                            <label for="txtPassword">Password: </label>
                            <input type="password" class="form-control" id="txtPassword" name = "password" onblur="minPassword()">
                        </div>
                        <div class="InValid" id="InValid">
                        </div>
                        <div class="form-group">
                            <label for="txtConfirm">Confirm: </label>
                            <input type="password" class="form-control" id="txtConfirm" name = "confirm" onblur="confimPassword()" >
                        </div>
                        <div class="InValid" id="InValidConf">
                        </div>
                        <h5>Person Infomation</h5>
                        <div class="form-group">
                            <label for="txtDOB">Date of Birth: </label>
                            <input type="text" class="form-control" id="txtDOB" name = "dob" >
                        </div>
                        <div class="form-group">
                            <label for="txtName" >Fullname </label>
                            <input type="text" class="form-control" id="txtName" name = "name" onblur="allLetter()">
                        </div>
                        <div class="InValid" id="InValidName">
                        </div>
                        <div class="form-group">
                            <label for="txtEmail">Email: </label>
                            <input type="text" class="form-control" id="txtEmail" name = "email" onblur="ValidateEmail()">
                        </div>
                        <div class="InValid" id="InValidEmail">
                        </div>
                        <hr />
                        <div class="card-footer">
                            <button type="submit" id ="submit"class="btn btn-outline-success">
                                <i class="fa fa-check"></i>
                                Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </jsp:body>

</t:main>
