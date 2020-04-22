

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <script>
            //<![CDATA[
            function logError(b, d, e, c, a) {
                try {
                    var g, h, k = "";
                    a = a || b;
                    b = (a.message || a.description || b).toString();
                    g = (a.stack || a.backtrace || a.stacktrace || "").toString();
                    h = a.target || "";
                    d = (d || a.fileName || a.sourceURL || h.src).toString();
                    c = c || window.event && window.event.errorCharacter;
                    e = (e || a.lineNumber || a.line).toString() + (c ? ":" + c : "");
                    try {
                        localStorage.setItem("test", "test"), localStorage.removeItem("test"), (new FormData).append("test", "test")
                    } catch (m) {
                        k = "1"
                    }
                    var f, l = {m: b, s: g, f: d || "", l: e || "", u: document.location, w: k};
                    b = "";
                    for (f in l)
                        b +=
                                f + "=" + encodeURIComponent(l[f]) + "&";
                    (new Image).src = "/track/jserror?" + b
                } catch (m) {
                }
            }
            window.onerror = logError;

            //]]>
        </script>
        <title>Ask and Answer - ASKfm</title>
        <meta name="description" content="Find out what people want to know about you. Ask questions and get answers on any topic!" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
        <meta name="csrf-param" content="authenticity_token" />
        <meta name="csrf-token" content="DRZcKkonecMjvOgbtHOaaL5wkPxRFsMCWmkB9rq+c0k9M5pswJK8CR7zBt4WdwONWIHPamg7yXS/cs5dXMQVEA==" />
        <meta property="fb:app_id" content="129215213762342" />
        <meta property="og:site_name" content="ASKfm" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="Ask and Answer - ASKfm" />
        <meta property="og:description" content="Find out what people want to know about you. Ask questions and get answers on any topic!" />
        <meta property="og:url" content="https://ask.fm/" />
        <meta property="og:image" content="https://d1muxuiltlupn6.cloudfront.net/assets/logo-preview-8de04b038ed54339d316d36c3f9ebb1fcae0fad398b7f968908d8e2d4ae20318.png" />
        <meta property="og:url" content="https://ask.fm/" />
        <meta name="turbolinks-cache-control" content="no-cache" />

        <link rel="stylesheet" media="all" href="css/style1.css" data-turbolinks-track="reload" />
        <script src="js/scripts.js" data-turbolinks-track="reload"></script>

        <!-- Facebook Pixel Code -->
        <script data-turbolinks-track='reload'>
            !function (f, b, e, v, n, t, s) {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                    'https://connect.facebook.net/en_US/fbevents.js');
            var pixel_id = '1355485211140782';
            fbq('init', pixel_id);
            fbq('track', 'PageView');
        </script>
        <noscript>
    <img height="1" width="1" src="https://www.facebook.com/tr?id=" + pixel_id + "&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->



</head>

<body data-id="home/welcome"><script>
    window.Config && window.Config.init({"poller:interval": 30000, "poller:cache_limit": 10, "poller:title": true, "mass_ask_limit": 50, "flash:delay": 3000, "gtm": true, "pushwoosh_service_worker_removal": true, "uploader:max_size": 8388608, "uploader:resize:enabled": false, "uploader:resize:max_size": 13000000, "uploader:resize:max_dimension": 2048, "ads_post_message_urls": ["https://askfm.adspirit.de", "https://ask.fm"], "ads_post_message_values": ["mobile-stream-1", "mobile-stream-2", "mobile-stream-3", "mobile-stream-4", "mobile-stream-5", "desktop-stream-1", "desktop-stream-2", "side", "side-2"], "in_dap_if": false, "page:category": "Home", "page:type": "Welcome", "page:user_id": null, "iframe_sandbox": "allow-same-origin allow-scripts", "fb_sharing:client_id": 129215213762342, "fb_sharing:version": "v3.0"});
    </script>
    <div id="loaderMother" style="display:none"></div>






    <main class="welcome-container util-vcontainer" style="background-image:url(&#39;https://d1muxuiltlupn6.cloudfront.net/assets/welcome-bg-b2a-0-63a42262cfba4e96a1ff9be245a8d6b043eea7fd6763418df883aabed4e1c2de.jpg&#39;)">
        <a title="Menu" class="btn-action-icon icon-hamburger rsp-eql-mobile" data-action="PopupOpen" data-url="/home/menu" href="#"></a>

        <div class="util-vcenter">
            <div class="logo">
                <img src="https://d1muxuiltlupn6.cloudfront.net/assets/logo-218dee6614a52e488e9b2aed37eecfcb43b2523a2973be8fdbfbbc3ddcdf6328.png" />
                Curious?
                <strong>Just ask!</strong><br/>
                <strong>Openly or anonymously.</strong>
            </div>
            <a class="btn-primary-wide" href="SignUp.jsp">Sign up</a>
            <a class="btn-primary-wide inverse" href="Login.jsp">Log in</a>
        </div>
    </main>  <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W5DVX4" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
</body>

</html>
