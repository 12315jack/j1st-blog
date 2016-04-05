<%--
  Created by IntelliJ IDEA.
  User: jack-pc
  Date: 2016/3/30
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>J1stiot-blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath }/resources/css/gallery.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/hover_pack.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
            });
        });
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.mixitup.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var filterList = {
                init: function () {
                    // MixItUp plugin
                    // http://mixitup.io
                    $('#portfoliolist').mixitup({
                        targetSelector: '.portfolio',
                        filterSelector: '.filter',
                        effects: ['fade'],
                        easing: 'snap',
                        // call the hover effect
                        onMixEnd: filterList.hoverEffect()
                    });
                },
                hoverEffect: function () {
                    // Simple parallax effect
                    $('#portfoliolist .portfolio').hover(
                            function () {
                                $(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
                                $(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');
                            },
                            function () {
                                $(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
                                $(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');
                            }
                    );

                }

            };

            // Run the show!
            filterList.init();
        });
    </script>
</head>
<body>
<div class="header-top">
    <div class="wrap">
        <div class="logo">
            <ul>
                <li><a href="index.html"><img src="${pageContext.request.contextPath }/resources/images/logo.png" alt=""></a></li>
                &nbsp;&nbsp;&nbsp;
                <li class="line"> | &nbsp;&nbsp;&nbsp;Just Do IT</li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="menu">
            <a class="toggleMenu" href="#"><img src="${pageContext.request.contextPath }/resources/images/nav_icon.png" alt=""/> </a>
            <ul class="nav" id="nav">
                <li class="current"><a href="#home">Home</a></li>
                <li><a href="#home">Blogs</a></li>
                <li><a href="#works">Works</a></li>
                <li><a href="#team">Team</a></li>
                <li><a href="#contact">Contact</a></li>
                <div class="clear"></div>
            </ul>
            <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/responsive-nav.js"></script>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="slider_left" id="home">
    <div class="wmuSlider example1">
        <div class="wmuSliderWrapper">
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="slider_text">
                    <h1>Meet <span class="head">J1stiot!</span></h1>
                    <h2><span class="green">/Creative</span> Just do yourself</h2>
                    <div class="m_1"><span class="left_line"> </span>
                        <p>Your energy than you imagine</p><span class="right_line"> </span></div>
                    <div class="social">
                        <ul>
                            <li class="twitter" title="twitter"><a href="#"><span> </span></a></li>
                            <li class="facebook" title="facebook"><a href="#"><span> </span></a></li>
                            <li class="google" title="google+"><a href="#"><span> </span></a></li>
                            <li class="dribble" title="dribble"><a href="#"><span> </span></a></li>
                        </ul>
                    </div>
                </div>
            </article>
            <article style="position: relative; width: 100%; opacity: 1;">
                <div class="slider_text">
                    <h1>勤奋<span class="head"> 努力!</span></h1>
                    <h2><span class="green">/Hardwork</span> No pains no gains.</h2>
                    <div class="m_1"><span class="left_line"> </span>
                        <p>一分耕耘,一分收获</p><span class="right_line"> </span></div>
                    <div class="social">
                        <ul>
                            <li class="twitter" title="twitter"><a href="#"><span> </span></a></li>
                            <li class="facebook" title="facebook"><a href="#"><span> </span></a></li>
                            <li class="google" title="google+"><a href="#"><span> </span></a></li>
                            <li class="dribble" title="dribble"><a href="#"><span> </span></a></li>
                        </ul>
                    </div>
                </div>
            </article>
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="slider_text">
                    <h1>充满<span class="head">激情!</span></h1>
                    <h2><span class="green">/Passion</span> Everyone has to live up to the talent can not be.</h2>
                    <div class="m_1"><span class="left_line"> </span>
                        <p>每个人都有不可被辜负的天分</p><span class="right_line"> </span></div>
                    <div class="social">
                        <ul>
                            <li class="twitter"><a href="#"><span> </span></a></li>
                            <li class="facebook"><a href="#"><span> </span></a></li>
                            <li class="google"><a href="#"><span> </span></a></li>
                            <li class="dribble"><a href="#"><span> </span></a></li>
                        </ul>
                    </div>
                </div>
            </article>
        </div>
        <ul class="wmuSliderPagination">
            <li><a href="#" class="">0</a></li>
            <li><a href="#" class="">1</a></li>
            <li><a href="#" class="">2</a></li>
        </ul>
    </div>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.wmuSlider.js"></script>
    <script>
        $('.example1').wmuSlider();
    </script>
</div>

<div class="works" id="works">
    <h3 class="m_2">Works</h3>
    <div class="m_3"><span class="left_line1"> </span><img src="${pageContext.request.contextPath }/resources/images/heart.png" alt=""/><span
            class="right_line1"> </span></div>
    <p class="m_5">每个人都有不可被辜负的天分.</p>
    <!-- container -->
</div>

<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>