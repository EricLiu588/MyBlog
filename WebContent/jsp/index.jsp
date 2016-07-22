<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%!int i = 0; %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath %>css/carousel.css" rel="stylesheet">
<link href="<%=basePath %>css/blog.css" rel="stylesheet">
<style type="text/css">
</style>
<title>EricLiu - 刘英杰</title>
</head>
<body>
  <!-- 判断数据是否存在 -->
  <c:if test="${empty requestScope.listsDiary }">
	 <script>
		location = "/EricPage/findAllDiary.action"
	 </script>
  </c:if>
  <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Eric&nbsp;的博客</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">主页</a></li>
                <li><a href="#about">18岁</a></li>
                <li><a href="#about">爱狗</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">喜爱 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">养狗</a></li>
                    <li><a href="#">画画</a></li>
                    <li><a href="#">旅行</a></li>
                    <li role="separator" class="divider"></li>
                    <!-- <li class="dropdown-header">Nav header</li> -->
                    <!-- <li><a href="#">Separated link</a></li> -->
                    <li><a href="#">听歌</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
       -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="<%=basePath %>pic/background2.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>你好啊 第<%=++i %>位访客</h1><br>
              <p><code>System.out.println("你好啊");</code></p>
              <p><code>cout&lt;&lt;"你好啊"&lt;&lt;endl;</code></p>
              <p><code>fmt.Println("你好啊");</code></p>
            </div>
          </div>
        </div>
        <!-- 
        <div class="item">
          <img class="second-slide" src="<%=basePath %>pic/slide-02.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="<%=basePath %>pic/slide-03.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
       -->
       <!-- 
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
       -->
    </div><!-- /.carousel -->
    <c:forEach items="${requestScope.listsDiary }" var="diary">
    	<div class="jumbotron">
    	<h1>${diary.title }</h1>
    	<p>${diary.article }</p>
    </div>
    </c:forEach>
    <footer class="blog-footer">
    	<p>Blog powered by bootstrap</p>
    	<p>晋ICP备15009514号-1</p>
    	<p><a href="#">返回顶部</a></p>
    </footer>
  <script type="text/javascript" src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
  <script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>