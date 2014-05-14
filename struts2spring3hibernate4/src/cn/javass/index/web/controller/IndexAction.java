package cn.javass.index.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.javass.index.model.ProductModel;
import cn.javass.index.service.IndexService;

@Controller("indexController")
public class IndexAction {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexAction.class);
	
	
	 @Autowired
	 @Qualifier("IndexService")
	 private IndexService indexService;
	
	@RequestMapping(value = "/index")
    public String index(HttpServletRequest request){
		System.out.println("hello index");
        return "index";
    }
	
	/**
	 * 主页滚动条加载
	 * @param request
	 * @param resp
	 * @return
	 * add by wuxiaowei on 2014-5-10 下午08:17:11
	 */
	@RequestMapping(value = "/loading")
	public String loading(HttpServletRequest request,HttpServletResponse resp){
		PrintWriter out = null;
		System.out.println("hello loding");
		List<ProductModel> list = indexService.listAll();
		ProductModel model = indexService.get(1);
		JSONArray json = JSONArray.fromObject(list);
		logger.info("查到的数据：" + json.toString());
		try {
			out = resp.getWriter();
			out.print(json.toString());
		} catch (IOException e) {
			e.printStackTrace();
			logger.info("IO异常：" + e);
		}finally{
			out.flush();
			out.close();
		}
		return null;
	}
}
