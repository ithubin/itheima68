package cn.e3.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3.manager.service.ItemService;
import cn.e3.pojo.TbItem;
import cn.e3.utils.DatagridPagebean;

@Controller
public class ItemController {
	
	//注入service服务对象
	@Autowired
	private ItemService itemService;
	
	/**
	 * 需求:根据id查询商品数据
	 * 请求:item/list/{itemId}
	 */
	@RequestMapping("item/list/{itemId}")
	@ResponseBody
	public TbItem findItemByID(@PathVariable Long itemId){
		//调用service服务方法
		TbItem item = itemService.findItemByID(itemId);
		return item;
	}

	
	/**
	 * 需求:分页查询商品列表
	 * 请求:/item/list
	 * 参数:Integer page,Integer rows
	 * 返回值:DatagridPagebean
	 */
	@RequestMapping("/item/list")
	@ResponseBody
	public DatagridPagebean findItemListByPage(@RequestParam(defaultValue="1") Integer page,
			@RequestParam(defaultValue="30") Integer rows){
		//远程调用service服务方法
		DatagridPagebean pagebean = itemService.findItemListByPage(page, rows);
		return pagebean;
	}
}
