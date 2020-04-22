

<%@page import="Main.LoginCheck"%>
<html lang="en" dir="ltr">
    <head>

        <title>Log in | ASKfm</title>
        <meta name="description" content="Find out what people want to know about you. Ask questions and get answers on any topic!" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
        <meta name="csrf-param" content="authenticity_token" />
        <meta name="csrf-token" content="3KyMr4w6BCoPB8Da70w1bAmSkK0tHVbbyMRLHKbb1fVdM5fod+E+bAqpBbYGbrflpntvdtPK1Dn71ltIkcSHDQ==" />
        <link rel="manifest" href="/manifest.json" />

        <link rel="stylesheet" media="all" href="css/login.css" data-turbolinks-track="reload" />
        <meta name="turbolinks-cache-control" content="no-cache" />

    </head>


    <body class="theme-4 dialogBody" data-id="session/new">
        <div id="loaderMother" style="display:none"></div>




        <header id="topMenu" class="topMenu">

            <div class="rsp-eql-desktop">
                <section class="topBar rsp-container">

                    <div class="topBar-right">

                    </div>
                    <div class="topBar-left"></div>
                    <a class="icon-askfm-logo" href="/"></a>

                </section>
            </div>

            <div class="rsp-lte-tablet rsp-container">
                <section class="topBar">

                    <div class="topBar-left">
                        <a title="Back" class="btn-action-icon icon-back" href="/"></a>
                    </div>

                    <div class="topBar-right">
                        <a class="btn-action plain" href="/signup">Sign up</a>
                    </div>

                    <h1>Log in</h1>

                </section>

            </div>


            <div style="display:none" class="flash-message notice">
                <p class="util-relative rsp-container">
                    <a href="" class="icon-close" data-action="FlashHide"></a>

                </p></div>

        </header>
        <main id="contentArea" class="rsp-container">

            <div id="madvertise_cmp_statistics" data-url="/track/madvertise_cmp" style="display:none"></div>


            <div class="main-content util-clearfix">
                <div class="main-column util-clearfix">



                    <form id="sessionNewForm" class="loginForm" data-action="FormXHRSubmit" action="Login.jsp" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="R0FC1ic11bENMP/3/xLxSTH8dGlqeCO7mLnCgJWdFPTG3lmR3O7v9wieOpsWMHPAnhWLspSvoVmrq9LUooJGDA==" />

                        <div class="simpleFormHeading rsp-gte-tablet">
                            <h1>Log in</h1>
                            <p>Don?t have an account yet? <a href="SignUp.jsp">Sign up</a></p>
                        </div>

                        <div class="inputFormBox">
                            <h3 class="simpleFormLabel">Username</h3>
                            <div class="inputFormPadding">
                                <input type="text" name="username" class="inputForm" required maxlength="40" placeholder="Username" autocomplete="username" autofocus="autofocus" data-input="CaptchaReload" />
                            </div>
                            <h3 class="simpleFormLabel">Password</h3>
                            <div class="inputFormPadding">
                                <input type="password" name="password" class="inputForm" required maxlength="20" placeholder="Password" autocomplete="current-password" />
                            </div>
                        </div>

                        <div class="captcha-container " style="display:none" data-url="/login/captcha"></div>

                        <div class="simpleFormItem">
                            <input type="checkbox" name="remember_me" id="rememberMe" value="1" class="checkbox" checked="checked" />
                            <label for="rememberMe">Remember me</label>
                            <a class="util-float-right" href="ForgetPassword.jsp">Forgot password?</a>
                        </div>

                        <div class="simpleFormItem">
                            <input type="submit" class="btn-primary-wide" value="Log in">
                        </div>

                    </form>
                </div>
            </div>
        </main>

        <%
            String username = (String) request.getParameter("username");
            String password = (String) request.getParameter("password");

            if (!LoginCheck.checkUsername(username)) {
                out.println("<div style=\"display: none;\" class=\"flash-message alert\">\n"
                        + "  <p class=\"util-relative rsp-container\">Please verify you?re a human!<a href=\"\" class=\"icon-close\" data-action=\"FlashHide\"></a></p></div>");
            } else if (!LoginCheck.checkPassword(username, password)) {
                out.println("<div style=\"display: none;\" class=\"flash-message alert\">\n"
                        + "  <p class=\"util-relative rsp-container\">Please verify you?re a human!<a href=\"\" class=\"icon-close\" data-action=\"FlashHide\"></a></p></div>");
            } else {
                response.sendRedirect("wall.jsp");
            }
        %>

    </body>
</html>

