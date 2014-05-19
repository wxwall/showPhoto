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

import cn.javass.common.pagination.Page;
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
		logger.debug("loading method star");
		Integer pn;
		try {
			pn = Integer.parseInt(request.getParameter("pn"));
		} catch(Exception e){
			pn = 0;
		}
		PrintWriter out = null;
		Page page = indexService.listAll(pn);
		JSONArray pageJson = JSONArray.fromObject(page);
		logger.info("查到的数据：" + pageJson.toString());
		try {
			out = resp.getWriter();
			out.print(pageJson.toString());
		} catch (IOException e) {
			e.printStackTrace();
			logger.info("IO异常：" + e);
		}finally{
			out.flush();
			out.close();
		}
		logger.debug("loading method end ");
		return null;
	}
}
