package cn.javass.demo.web.controller;

import javax.servlet.http.HttpServletRequest;


/**
 * @author Zhangkaitao
 * @version 1.0
 */
public class IndexController {
    
    public String index(HttpServletRequest request){
    	System.out.println("hello web ");
    	System.out.println("this is true");
        return "index";
    }

}
