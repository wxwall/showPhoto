<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="inc/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link type="text/css" href="<c:url value='/css/html.css'/>" rel="stylesheet"/>
<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css" type="text/css"/>
<script src="js/jquery.masonry.min.js"></script>
<title>滚动条到底部时自己加载新的内容</title>
</head>
<body>

<!-- head -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
     <div class="container">
       <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="#">Project name</a>
       </div>
       <div class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
           <li class="active"><a href="#">Home</a></li>
           <li><a href="#about">About</a></li>
           <li><a href="#contact">Contact</a></li>
         </ul>
       </div><!--/.nav-collapse -->
     </div>
   </div>
   <div style="width:100%;height:60px; background: #eee;"></div>

<div class="contain">
    <div class="contain_child">
    	<div class="Imgtype"><img src="images/jing.png" width="36px" height="36px"/></div>
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
        <div class="ding_num"><center>321</center></div><div class="cai_num"><center>321</center></div>
      	<div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
        <div class="ding_num"><center>321</center></div><div class="cai_num"><center>321</center></div>
      	<div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="Imgtype"><img src="images/jing.png" width="36px" height="36px"/></div>
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="250px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
</div>
<div class="loading"><img alt="加载中" width="40px" align="middle" src="<c:url value='/images/tool/loading.jpg'/>">&nbsp;&nbsp;&nbsp;&nbsp;拼命加载中...</div>
</body>
</html>