
<%@page import="Main.Signup"%>
<html lang="en" dir="ltr">
    <head>

        <title>Sign up | ASKfm</title>
        <meta name="description" content="Find out what people want to know about you. Ask questions and get answers on any topic!" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
        <meta name="csrf-param" content="authenticity_token" />
        <meta name="csrf-token" content="vU3/phmx0RmIXjy/KgIi6oCs6s/Czri7Fid+oC2uHOU95z8SFU76U4lqDgAUTzLht0q7/uxtYoR1oVTHO/5FPw==" />
        <link rel="manifest" href="/manifest.json" />

        <link rel="stylesheet" media="all" href="css/login.css" turbolinks-track="reload" />
        <meta name="turbolinks-cache-control" content="no-cache" />



    </head>


    <body class="theme-4 dialogBody" data-id="signup/new">

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


                    <form id="signupNewForm" class="signupForm" autocomplete="off" data-action="SubmitWithTimezone" action="SignUp.jsp" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="mY/9IURBBDxD2oEZhjJiL32vXHPg4tM1cl0FuyTJmMAZJT2VSL4vdkLus6a4f3IkSkkNQs5BCQoR2y/cMpnBGg==" />


                        <div class="simpleFormHeading rsp-gte-tablet">
                            <h1>Sign up</h1>
                            <p>Already have an account? <a href="Login.jsp">Log in</a></p>

                        </div>
                        <input type="hidden" name="user[tz_id]" id="user_tz_id" />
                        <input type="hidden" name="user[gmt_offset]" id="user_gmt_offset" />

                        <div class="inputFormBox">


                            <h3 class="simpleFormLabel">Name</h3>
                            <div class="inputFormPadding">
                                <input type="text" class="inputForm" maxlength="60" placeholder="name" autofocus="autofocus" data-input="LoginSuggest" size="50" name="user[name]" id="user_name" required/>
                            </div>


                            <h3 class="simpleFormLabel">Username</h3>
                            <div class="inputFormPadding">
                                <input type="text" class="inputForm" maxlength="45" placeholder="username" autofocus="autofocus" data-input="LoginSuggest" size="50" name="user[username]" id="username" required/>
                            </div>
                            <h3 class="simpleFormLabel">Password</h3>
                            <div class="inputFormPadding">
                                <input type="password" class="inputForm" maxlength="45" placeholder="password" autofocus="autofocus" data-input="LoginSuggest" size="50" name="user[password]" required/>
                            </div>
                            <h3 class="simpleFormLabel">Confirm password</h3>
                            <div class="inputFormPadding">
                                <input type="password" class="inputForm" maxlength="45" placeholder="repassword" autofocus="autofocus" data-input="LoginSuggest" size="50" name="user[repassword]" required/>
                            </div>

                            <h3 class="simpleFormLabel">Security question, What's your grandfather name?</h3>
                            <div class="inputFormPadding">
                                <input type="text" class="inputForm" maxlength="45" placeholder="answer" autofocus="autofocus" data-input="LoginSuggest" size="50" name="user[answer]" id="security_answer" required/>
                            </div>   
                            <h3 class="simpleFormLabel">Gender</h3>

                            <select id="date_day" name="user[gender]" class="selectForm" data-action="SignupConfirmDob" required>
                                <option value="">Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>

                            <h3 class="simpleFormLabel" style="display:none">Login</h3>
                            <div class="inputFormPadding" style="display:none">
                                <input class="inputForm" maxlength="30" placeholder="Full name" autocomplete="name" data-input="LoginSuggest" data-show-on-error="true" size="30" type="text" name="user[name]" id="user_name" />
                            </div>
                            <h3 class="simpleFormLabel" style="display:none">Username</h3>
                            <div class="inputFormPadding suggest-input" style="display:none">
                                <input class="inputForm" maxlength="40" placeholder="Username" autocomplete="username" data-input="LoginCheck" data-url="/signup/suggest" data-show-on-error="true" size="40" type="text" name="user[login]" id="user_login" />
                                <a class="icon-reload" data-action="LoginReset" href="#"></a>
                            </div>
                        </div>

                        <div class="simpleFormItem">
                            <h3 class="simpleFormLabel">Birthday</h3>
                            <table class="multiFormHolder">
                                <tbody>
                                    <tr data-confirm="Is your personal information correct?">
                                        <td class="leftSideCellFill">
                                            <select id="date_day" name="user[day]" class="selectForm" data-action="SignupConfirmDob" required>
                                                <option value="">Day</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                                <option value="14">14</option>
                                                <option value="15">15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                                <option value="21">21</option>
                                                <option value="22">22</option>
                                                <option value="23">23</option>
                                                <option value="24">24</option>
                                                <option value="25">25</option>
                                                <option value="26">26</option>
                                                <option value="27">27</option>
                                                <option value="28">28</option>
                                                <option value="29">29</option>
                                                <option value="30">30</option>
                                                <option value="31">31</option>
                                            </select>

                                        </td>
                                        <td class="mainCellFill">
                                            <select id="date_month" name="user[month]" class="selectForm" data-action="SignupConfirmDob" required>
                                                <option value="">Month</option>
                                                <option value="1">January</option>
                                                <option value="2">February</option>
                                                <option value="3">March</option>
                                                <option value="4">April</option>
                                                <option value="5">May</option>
                                                <option value="6">June</option>
                                                <option value="7">July</option>
                                                <option value="8">August</option>
                                                <option value="9">September</option>
                                                <option value="10">October</option>
                                                <option value="11">November</option>
                                                <option value="12">December</option>
                                            </select>

                                        </td>
                                        <td class="rightSideCellFill">
                                            <select id="date_year" name="user[year]" class="selectForm" data-action="SignupConfirmDob" required>
                                                <option value="">Year</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                                <option value="2010">2010</option>
                                                <option value="2009">2009</option>
                                                <option value="2008">2008</option>
                                                <option value="2007">2007</option>
                                                <option value="2006">2006</option>
                                                <option value="2005">2005</option>
                                                <option value="2004">2004</option>
                                                <option value="2003">2003</option>
                                                <option value="2002">2002</option>
                                                <option value="2001">2001</option>
                                                <option value="2000">2000</option>
                                                <option value="1999">1999</option>
                                                <option value="1998">1998</option>
                                                <option value="1997">1997</option>
                                                <option value="1996">1996</option>
                                                <option value="1995">1995</option>
                                                <option value="1994">1994</option>
                                                <option value="1993">1993</option>
                                                <option value="1992">1992</option>
                                                <option value="1991">1991</option>
                                                <option value="1990">1990</option>
                                                <option value="1989">1989</option>
                                                <option value="1988">1988</option>
                                                <option value="1987">1987</option>
                                                <option value="1986">1986</option>
                                                <option value="1985">1985</option>
                                                <option value="1984">1984</option>
                                                <option value="1983">1983</option>
                                                <option value="1982">1982</option>
                                                <option value="1981">1981</option>
                                                <option value="1980">1980</option>
                                                <option value="1979">1979</option>
                                                <option value="1978">1978</option>
                                                <option value="1977">1977</option>
                                                <option value="1976">1976</option>
                                                <option value="1975">1975</option>
                                                <option value="1974">1974</option>
                                                <option value="1973">1973</option>
                                                <option value="1972">1972</option>
                                                <option value="1971">1971</option>
                                                <option value="1970">1970</option>
                                                <option value="1969">1969</option>
                                                <option value="1968">1968</option>
                                                <option value="1967">1967</option>
                                                <option value="1966">1966</option>
                                                <option value="1965">1965</option>
                                                <option value="1964">1964</option>
                                                <option value="1963">1963</option>
                                                <option value="1962">1962</option>
                                                <option value="1961">1961</option>
                                                <option value="1960">1960</option>
                                                <option value="1959">1959</option>
                                                <option value="1958">1958</option>
                                                <option value="1957">1957</option>
                                                <option value="1956">1956</option>
                                                <option value="1955">1955</option>
                                                <option value="1954">1954</option>
                                                <option value="1953">1953</option>
                                                <option value="1952">1952</option>
                                                <option value="1951">1951</option>
                                                <option value="1950">1950</option>
                                                <option value="1949">1949</option>
                                                <option value="1948">1948</option>
                                                <option value="1947">1947</option>
                                                <option value="1946">1946</option>
                                                <option value="1945">1945</option>
                                                <option value="1944">1944</option>
                                                <option value="1943">1943</option>
                                                <option value="1942">1942</option>
                                                <option value="1941">1941</option>
                                                <option value="1940">1940</option>
                                                <option value="1939">1939</option>
                                                <option value="1938">1938</option>
                                                <option value="1937">1937</option>
                                                <option value="1936">1936</option>
                                                <option value="1935">1935</option>
                                                <option value="1934">1934</option>
                                                <option value="1933">1933</option>
                                                <option value="1932">1932</option>
                                                <option value="1931">1931</option>
                                                <option value="1930">1930</option>
                                                <option value="1929">1929</option>
                                                <option value="1928">1928</option>
                                                <option value="1927">1927</option>
                                                <option value="1926">1926</option>
                                                <option value="1925">1925</option>
                                                <option value="1924">1924</option>
                                                <option value="1923">1923</option>
                                                <option value="1922">1922</option>
                                                <option value="1921">1921</option>
                                                <option value="1920">1920</option>
                                            </select>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>


                        <div class="captcha-container " style="display:none" data-url="/signup/captcha"></div>

                        <div class="simpleFormItem" >
                            <input type="submit" class="btn-primary-wide" value="Sign up">
                        </div>
                    </form>

                    <%
                        String username = (String) request.getParameter("user[username]");
                        String password = (String) request.getParameter("user[password]");
                        String repassword = (String) request.getParameter("user[repassword]");
                        String name = (String) request.getParameter("user[name]");
                        String answer = (String) request.getParameter("user[answer]");
                        String gender = (String) request.getParameter("user[gender]");
                        String day = (String) request.getParameter("user[day]");
                        String month = (String) request.getParameter("user[month]");
                        String year = (String) request.getParameter("user[year]");
                        String date = day + "-" + month + "-" + year;
                        
                        out.println(username + " " + date + " " + answer + " " + " " + gender + "  " + password + " " + name);

                        if (username != null) {
                            if (!password.equals(repassword)) {

                            } else if (!Signup.checkUsername(username)) {

                            } else {
                                Signup.insertNewUser(username, password, gender, answer, name, date);
                                request.setAttribute("username", username);
                                response.sendRedirect("wall.jsp");
                            }
                        }
                    %>


                </div> 
            </div>
        </main>

    </body>

</html>

