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
    <link href="//cdn.bootcss.com/fullPage.js/2.8.2/jquery.fullPage.min.css" rel="stylesheet">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=basePath %>css/carousel.css" rel="stylesheet">
	<link href="<%=basePath %>css/blog.css" rel="stylesheet">
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
    <div id="scrollPage">
    	<div class="section" data-anchor="page1" style="background-image: url('pic/background2.jpg');">
    		<div class="container-fluid">
           		<div align="center">
           			<h1 style="color:#FFF;"><strong>一辈子只满足于吃回锅肉的话，你让锅包肉怎么办</strong></h1><br>
           			<p><h3><code>System.out.println("你好啊");</code></h3></p>
           			<p><h3><code>cout&lt;&lt;"你好啊"&lt;&lt;endl;</code></h3></p>
           			<p><h3><code>fmt.Println("你好啊");</code></h3></p>
           		</div>
    		</div>
        </div>
    	<div class="section" style="background-color: #EEE;">
    		<c:forEach items="${requestScope.listsDiary }" var="diary">
    			<div class="slide">
    				<div class="container-fluid">
    					<div class="jumbotron">
    						<h1>${diary.title }</h1>
    						<p>${diary.article }</p>
    					</div>
    				</div>	
    			</div>
    		</c:forEach>
    	</div>
    	<footer class="blog-footer">
   			<p>访问量：<%=++i %>>&nbsp;位</p>
   			<p>晋ICP备15009514号-1</p>
   			<p><a href="#">返回顶部</a></p>
    	</footer>
    </div>
	

  <script type="text/javascript" src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
  <script src="//cdn.bootcss.com/fullPage.js/2.8.2/jquery.fullPage.js"></script>
  <script src="//cdn.bootcss.com/fullPage.js/2.8.2/vendors/jquery.easings.min.js"></script>
  <script src="//cdn.bootcss.com/fullPage.js/2.8.2/vendors/scrolloverflow.min.js"></script>
  <script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $("#scrollPage").fullpage({
        	'navigation': true,
        });
    });
  </script>  
</body>
</html>