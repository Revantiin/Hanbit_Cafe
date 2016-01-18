<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hanbit Cafe</title>

    <link rel="shortcut icon" href="<%=myDirectory %>/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="<%=myDirectory %>/images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="<%=myDirectory %>/images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="<%=myDirectory %>/images/apple-touch-icon-114x114.png" />

    <!-- Bootstrap core CSS -->
    <link href="<%=myDirectory %>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=myDirectory %>/css/animate.css" rel="stylesheet">
    <link href="<%=myDirectory %>/css/flexslider.css" rel="stylesheet">
    <link href="<%=myDirectory %>/css/font-awesome.css" rel="stylesheet">
    <link href="<%=myDirectory %>/css/prettyPhoto.css" rel="stylesheet">

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link href="<%=myDirectory %>/rs-plugin/css/settings.css" rel="stylesheet">

    <link href="<%=myDirectory %>/style.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=myDirectory %>/css/custom.css" rel="stylesheet">
</head>
<body>
	<header class="header">
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<%=myDirectory %>/index.jsp"><img src="<%=myDirectory %>/images/logo.png" alt=""></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="<%=myDTHomepage %>">Home</a></li>
                        <li><a href="<%=myDTAbotpage %>">About</a></li>
                        <li><a href="<%=myDTMenupage %>">Menu</a></li>
                        <li><a href="<%=myDTShoppage %>">Shop</a></li>
                        <li><a href="<%=myDTBoardpage %>">Board</a></li>
                        <li><a href="<%=myDTContactpage %>">Contact</a></li>
                        <%
                        String Login = (String)session.getAttribute("Login");
                        if(Login == null){
                        %>
                        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <span class="caret"></span></a>
							<ul id="login-dp" class="dropdown-menu">
								<li>
									 <div class="row">
											<div class="col-md-12">
												Login via
												<div class="social-buttons">
													<a href="#" class="btn-fb"><i class="fa fa-facebook"></i> Facebook</a><br>
													<a href="#" class="btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
												</div>
				                                or
												 <form class="form" role="form" method="post" action="<%=myLogin %>" accept-charset="UTF-8" id="login-nav">
														<div class="form-group">
															 <label class="sr-only" for="exampleInputEmail2">Email address</label>
															 <input type="text" class="form-control" id="id" name="id" placeholder="Input Id please" required>
														</div>
														<div class="form-group">
															 <label class="sr-only" for="exampleInputPassword2">Password</label>
															 <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
				                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
														</div>
														<div class="form-group">
															 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
														</div>
														<div class="checkbox">
															 <label>
															 <input type="checkbox"> keep me logged-in
															 </label>
														</div>
												 </form>
											</div>
											<div class="bottom text-center">
												New here ? <a href="<%=myDTSignpage %>"><b>Join Us</b></a>
											</div>
									 </div>
								</li>
							</ul>
				        </li>
				        <%}else{ %>
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Logout <span class="caret"></span></a>
				          <ul id="login-dp" class="dropdown-menu">
								<li>
									 <div class="row">
											<div class="col-md-12">
											${member.name } 님 환영합니다.<br>
												<div class="form">
													회원정보 변경은 이곳에서
													<input type="button" value="회원정보 변경" onclick="location.href='<%=myMemberEditForm %>'"><br>
													Logout? Here
													<input type="button" value="Logout" onclick="location.href='<%=myLogout %>'"><br>
												</div>
											</div>
									 </div>
								</li>
						  </ul>
						</li>
				        <%} %>
				      </ul>
				 </div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
        </nav>
    </header><!-- end header -->
</body>
</html>

                
              <!--   <div class='navbar'>
				  <div class='navbar-inner'>
				    <div class='container-fluid'>
				      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				    <a class='brand'>Test</a> -->
				    <!-- <ul class='nav nav-collapse collapse'>
				        <li><a>Item 1</a></li>
				        <li><a>Item 2</a></li>
				
				    </ul> -->