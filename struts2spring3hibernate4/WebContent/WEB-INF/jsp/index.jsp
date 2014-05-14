<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<script src="http://cdn.bootcss.com/jquery/2.1.1-beta1/jquery.min.js"></script>
<link type="text/css" href="<c:url value='/css/html.css'/>" rel="stylesheet"/>
<script src="js/jquery.masonry.min.js"></script>
<title>滚动条到底部时自己加载新的内容</title>
<script type="text/javascript">
  $(document).ready(function(){
	var $container = $('.contain').masonry();
	$container.imagesLoaded( function(){
        $container.masonry({
          itemSelector : '.contain_child',
          isFitWidth: true //全屏
        });
      });
    $(window).scroll(function(){
      if($(document).scrollTop()>=$(document).height()-$(window).height()){
        $.ajax({
            type:"GET",
            url:'<c:url value='/loading'/>?'+Math.random(),
            beforeSend:function(){
              $('.loading').show() //显示加载时候的提示
            },
            success:function(ret){
            goujian(ret);
            }
        })
      }
    })
    

    //构建图表
    var goujian = function (json){
        var jsonStr = eval(json);
        $.each(jsonStr,function(i){
            var $loadingItem = $("<div class='contain_child'>"+
        	"<div class='contain_child_img'>"+
        	"<img width='220px' src='"+jsonStr[i].imgsrc+"'></div>"+
        	"<div class='contein_child_title'>"+
        	"<span>"+jsonStr[i].title+"</span>"+
        	"<p class='contein_child_p'>"+jsonStr[i].introduce+"</p>"+
        	"</div><div><div class='ding'></div><div class='cai'></div></div>"+
			"<div class='ding_num'><center>"+jsonStr[i].ding+"</center></div><div class='cai_num'><center>"+jsonStr[i].cai+"</center></div>"+
			"<div class='author'><span>作者："+jsonStr[i].author+"</span><div><span>"+jsonStr[i].visits+"</span></div></div></div>");
        	//$('.contain_child').last().after(loadingItem);
            $container.append($loadingItem);
            $loadingItem = $loadingItem.css({ opacity: 0 });//把新的内容设置为透明
            $loadingItem.imagesLoaded(function(){
            	$container.masonry('appended',$loadingItem,true);
            	$loadingItem.animate({ opacity: 2 });// 渐显新的内容
            });
        })
    };
  })
  
</script>
</head>
<body>
<div class="contain">
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
        <div class="ding_num"><center>321</center></div><div class="cai_num"><center>321</center></div>
      	<div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
        <div class="ding_num"><center>321</center></div><div class="cai_num"><center>321</center></div>
      	<div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
        <div class="contein_child_title">
        	<span>飞行的密码</span>
       	  <p class="contein_child_p">这是一段简介，大约只有50个字的样子，多余的字将省略...</p>
        </div>
        
        <div><div class="ding"></div><div class="cai"></div></div>
      <div class="author"><span>作者：小明</span><div><span>1212</span></div></div>
    </div>
    
    <div class="contain_child">
    	<div class="contain_child_img"><img width="220px" src="<c:url value='/images/test1.png'/>"></div>
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