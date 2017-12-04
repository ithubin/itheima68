package cn.e3.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	
	/**
	 * 需求:后台系统页面跳转
	 * 请求:
	 * 1,首页: localhost:8081/index
	 * 2,商品列表: localhost:8081/item-list
	 * 3,商品添加:localhost:8081/item-add
	 * ............
	 * 请求规律:
	 * 请求地址和页面名称相同
	 * 思路:
	 * 把请求名称作为参数传递方法,返回参数作为逻辑视图,
	 * 可以使用一个请求映射接受所有页面跳转
	 */
	@RequestMapping("{page}")
	public String showPage(@PathVariable String page){
		return page;
	}
	

}
