

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <title>Password recovery | ASKfm</title>
        <meta name="description" content="Find out what people want to know about you. Ask questions and get answers on any topic!" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
        <meta name="csrf-param" content="authenticity_token" />
        <meta name="csrf-token" content="VFqt0i4z19BZXk6NBJVTeo1Hjw4xE05NVMKFsi0XmJTU8G1mIsz8mlhqfDI62ENxuqHePx+wlHI3RK/VO0fBTg==" />
        <link rel="manifest" href="/manifest.json" />

        <link rel="stylesheet" media="all" href="css/login.css" data-turbolinks-track="reload" />
        <meta name="turbolinks-cache-control" content="no-cache" />

    <img height="1" width="1" src="https://www.facebook.com/tr?id=" + pixel_id + "&ev=PageView&noscript=1"/>

</head>


<body class="theme-4 dialogBody" data-id="password_recovery/new">


    <div id="loaderMother" style="display:none"></div>


    <header id="topMenu" class="topMenu">

        <div class="rsp-eql-desktop">
            <section class="topBar rsp-container">

                <div class="topBar-right">

                </div>
                <div class="topBar-left"></div>
                <a class="icon-askfm-logo" href="MainPage.jsp"></a>

            </section>
        </div>

        <div class="rsp-lte-tablet rsp-container">
            <section class="topBar">

                <div class="topBar-left">
                    <a title="Back" class="btn-action-icon icon-back" href="/login"></a>
                </div>
                <div class="topBar-right">

                </div>
                <h1>Password recovery</h1>

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
                <form id="passwordRecoveryNewForm" class="recoverForm" data-action="FormXHRSubmit" action="/login/recover" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="m2xC67jgzYLiKI4bB7BrAqZe0e3YUaCLU5X2+wDmN/sbxoJftB/myOMcvKQ5/XsJkbiA3PbyerQwE9ycFrZuIQ==" />

                    <div class="simpleFormHeading rsp-gte-tablet">
                        <h1>Password recovery</h1>
                    </div>
                    <div class="inputFormBox">
                        <h3 class="simpleFormLabel">Username</h3>
                        <div class="inputFormPadding">
                            <input class="inputForm" autofocus="autofocus" placeholder="username" type="text" name="recovery[username]" id="recovery_username" />
                        </div>
                        <h3 class="simpleFormLabel">What's your grandfather name?</h3>
                        <div class="inputFormPadding">
                            <input class="inputForm" autofocus="autofocus" placeholder="answer" type="text" name="recovery[answer]" id="recovery_answer" />
                        </div>
                    </div>

                    <div class="simpleFormItem">
                        <label for="rememberMe">Return to login?</label>
                        <a class="util-float-right" href="Login.jsp">Login</a>
                    </div>

                    <div class="simpleFormItem">
                        <input type="submit" name="commit" value="Proceed" class="btn-primary-wide" />
                    </div>

                </form>

            </div> 
        </div>
    </main>

</body>

</html>