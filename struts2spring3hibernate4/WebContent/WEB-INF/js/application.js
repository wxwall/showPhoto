(function($){
	var pn = 1;//全局变量 当前页,默认为第一页
	var isScroller = true;//当滚动条事件把所有的数据加载完后，就不需要再滚动条事件了
	$(document).ready(function(){
		//给页面布局
		var contain = $('.contain');
		contain = contain.css({ opacity: 0 });
		var $container = contain.masonry();
		$container.imagesLoaded( function(){
	      $container.masonry({
	        itemSelector : '.contain_child',
	        isFitWidth: true //是否全屏
	      });
	    });
		contain.animate({ opacity: 1 });// 当布局完成时，渐显新的内容

		//页面滚动时加载新的内容
		var scrollTimer;
		$(window).scroll(function () {
		    if(scrollTimer) {
		        clearTimeout(scrollTimer);
		        scrollTimer = undefined;
		    }
		    scrollTimer = setTimeout(function(){
		    	if($(document).scrollTop()>=$(document).height()-$(window).height() && isScroller){
			        $.ajax({
			            type:"GET",
			            async:false,
			            url:'loading?pn='+pn+'&'+Math.random(),
			            beforeSend:function(){
			              $('.loading').show() //显示加载时候的提示
			            },
			            success:function(ret){
			            	goujian(ret);
			            }
			        })
			      }
		    },300);
		});

	    

	    //构建新生成的单元格
	    var goujian = function (json){
	    	
	    	var jsonStr = eval(json);
	    	console.log('当前页面'+pn);
	    	var currPage = jsonStr[0].context.pageCount;
	    	if(pn > currPage){
	    		alert('已到了最后');
	    		isScroller = false;
	    	}else{
	    		console.log(jsonStr);
	    		var items = jsonStr[0].items
	    		$.each(items,function(i){
	    			var $loadingItem = $("<div class='contain_child'>"+
	    					"<div class='contain_child_img'>"+
	    					"<img width='250px' src='"+items[i].imgsrc+"'></div>"+
	    					"<div class='contein_child_title'>"+
	    					"<span>"+items[i].title+"</span>"+
	    					"<p class='contein_child_p'>"+items[i].introduce+"</p>"+
	    					"</div><div><div class='ding'></div><div class='cai'></div></div>"+
	    					"<div class='ding_num'><center>"+items[i].ding+"</center></div><div class='cai_num'><center>"+items[i].cai+"</center></div>"+
	    					"<div class='author'><span>作者："+items[i].author+"</span><div><span>"+items[i].visits+"</span></div></div></div>");
	    			//$('.contain_child').last().after(loadingItem);
	    			$container.append($loadingItem);
	    			$loadingItem = $loadingItem.css({ opacity: 0 });//把新的内容设置为透明
	    			$loadingItem.imagesLoaded(function(){
	    				$container.masonry('appended',$loadingItem,true);
	    				$loadingItem.animate({ opacity: 1 });// 渐显新的内容
	    			});
	    		})
	    	}
	    	pn++;
	    };
	  })
})(jQuery);