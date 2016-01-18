<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hanbit Cafe</title>

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png" />

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link href="rs-plugin/css/settings.css" rel="stylesheet">

    <link href="style.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="loader">
    <div class="loader-container">
        <h3 class="loader-back-text"><img src="images/loader.gif" alt="" class="loader"></h3>
    </div>
</div>

<div id="wrapper">

   <jsp:include page="inner_header.jsp"></jsp:include>

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3><span>MAIN /</span> CONTACT</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end page-header -->

    <div class="map-wrapper">
        <div id="map"></div>
    </div><!-- end map -->

    <section class="section">
        <div class="container">
            <div class="row">
                <div class="contact_form col-lg-12">
                    <h3>Contact with us</h3>
                    <div id="message"></div>
                    <form id="contactform" class="row" action="contact.php" name="contactform" method="post">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <input type="text" name="name" id="name" class="form-control" placeholder="Name"> 
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <input type="text" name="email" id="email" class="form-control" placeholder="Email"> 
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <input type="text" name="name" id="phone" class="form-control" placeholder="Phone"> 
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <textarea class="form-control" name="comments" id="comments" rows="6" placeholder="Message Below"></textarea>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-left">
                            <button type="submit" value="SEND" id="submit" class="btn btn-primary">SEND</button>
                        </div>
                    </form> 
                </div> <!-- end contact_widget -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <jsp:include page="footer.jsp"></jsp:include>

</div><!-- end wrapper -->
        
    <!-- Template core JavaScript's
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/retina.js"></script>
    <script src="js/imagesLoaded.js"></script>
    <script src="js/masonry.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>   
    <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/contact.js"></script>
    <!-- Map Scripts-->
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <!-- Google Map -->
    <script type="text/javascript">
        (function($) {
          "use strict";
            var locations = [
            ['<div class="infobox"><h3 class="title"><a href="about.jsp">Hanbit Cafe - 훗</a></h3><span>서울특별시 강남구 역삼1동 819-4 2층</span><br>+82) 02 123 4567</p></div></div></div>', 37.499463, 127.029247, 2]
            ];
        
            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 18,
                scrollwheel: true,
                navigationControl: true,
                mapTypeControl: false,
                scaleControl: false,
                draggable: true,
                styles: [ { "stylers": [ { "hue": "#412a22" },  {saturation: -80},
                    {gamma: 0} ] } ],
                center: new google.maps.LatLng(37.499463, 127.029247),
              mapTypeId: google.maps.MapTypeId.ROADMAP
            });
        
            var infowindow = new google.maps.InfoWindow();
        
            var marker, i;
        
            for (i = 0; i < locations.length; i++) {  
          
                marker = new google.maps.Marker({ 
                position: new google.maps.LatLng(locations[i][1], locations[i][2]), 
                map: map ,
                icon: 'images/marker.png'
                });
        
        
              google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                  infowindow.setContent(locations[i][0]);
                  infowindow.open(map, marker);
                }
              })(marker, i));
            }
        })(jQuery);
    </script>

</body>
</html>