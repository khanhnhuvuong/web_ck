<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wealthuring | Đăng Ký</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">


    <!-- Font awesome -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="../css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="../css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../css/jquery.fancybox.css" type="text/css" media="screen"/>
    <!-- Theme color -->
    <link id="switcher" href="../css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main style sheet -->
    <link href="../css/style.css" rel="stylesheet">


    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>


<body>
<%
    String error = request.getAttribute("error") + "";
    error = (error.equals("null") ? "" : error);

    String username = request.getAttribute("username") + "";
    username = (username.equals("null") ? "" : username);
    String email = request.getAttribute("email") + "";
    email = (email.equals("null") ? "" : email);
    String tel = request.getAttribute("tel") + "";
    tel = (tel.equals("null") ? "" : tel);
%>
<section id="aa-signin">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-signin-area">
                    <div class="aa-signin-form">
                        <div class="aa-signin-form-title">
                            <a class="aa-property-home, banner" href="../index.jsp"><img src="../img/bannerWeb.png"
                                                                                         alt="banner"
                                                                                         style="max-width: 100%; height: auto; padding-bottom: 10px;border-bottom: 1px solid #404040 ;"></a>
                            <div class="row">
                                <div class="title">
                                    <span><h2>Tạo tài khoản</h2></span>
                                    <span><h5>để có những trải nghiệm tốt nhất</h5></span>
                                    <div style="color: #e31414;font-weight: bold;font-size: 12pt;" id="error">
                                        <%=error%>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <form action="../nguoi-dung" class="contacform" method="post" id="signupform">
                            <input type="hidden" name="action" value="dang-ki">
                            <div class="aa-single-field">
                                <label for="name">Tên đăng nhập: <span class="required">*</span></label>
                                <input type="text" required="required" aria-required="true" value="<%=username%>"
                                       id="username"
                                       name="name">
                                <div id="error_username"></div>
                            </div>
                            <div class="aa-single-field">
                                <label for="email">Email <span class="required">*</span></label>
                                <input type="email" required="required" aria-required="true" id="email1"
                                       value="<%=email%>"
                                       name="email" placeholder="example@gmail.com">
                                <div id="error_email1"></div>
                            </div>
                            <div class="aa-single-field">
                                <label for="tel">Số điện thoại: <span class="required">*</span></label>
                                <input type="tel" required="required" aria-required="true" id="tel" value="<%=tel%>"
                                       name="tel"
                                       placeholder="XX-XXXX-XXXX">
                                <div id="error_tel"></div>
                            </div>
                            <div class="aa-single-field">
                                <label for="password">Mật khẩu: <span class="required">*</span></label>
                                <input type="password" name="password" id="pass">
                                <div id="error_pass"></div>
                                <input type="checkbox" onclick="showPass()"> Hiển thị mật khẩu
                            </div>
                            <div class="aa-single-field">
                                <label for="confirm-password">Nhập lại mật khẩu: <span class="required">*</span></label>
                                <input type="password" name="confirm-password" id="comPass" onkeyup="checkComPass()">
                                <div id="error_compass"></div>
                                <input type="checkbox" onclick="showComPass()"> Hiển thị mật khẩu
                            </div>
                            <div class="aa-single-submit">
                                <input type="submit" value="Tạo Tài Khoản" class="aa-browse-btn" name="submit"
                                       onclick="signUp()">
                                <p>Bạn đã có tài khoản? <a href="signin.jsp" style="color: #59abe3 ;">Đăng nhập tại
                                    đây!</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- jQuery library -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<script src="../js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="../js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="../js/nouislider.js"></script>
<!-- mixit slider -->
<script type="text/javascript" src="../js/jquery.mixitup.js"></script>
<!-- Add fancyBox -->
<script type="text/javascript" src="../js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="../js/custom.js"></script>
<!-- my script -->
<script src="../js/script.js"></script>
</body>

</html>