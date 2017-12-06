package cn.e3.manager.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.e3.manager.service.ItemCatService;
import cn.e3.mapper.TbItemCatMapper;
import cn.e3.pojo.TbItemCat;
import cn.e3.pojo.TbItemCatExample;
import cn.e3.pojo.TbItemCatExample.Criteria;
import cn.e3.utils.TreeNode;
@Service
public class ItemCatServiceImpl implements ItemCatService {
	
	//注入商品类目mapper接口代理对象
	@Autowired
	private TbItemCatMapper itemCatMapper;

	/**
	 * 需求:根据父id查询此节点下面的子节点
	 * 参数:Long parentId
	 * 返回值:List<TreeNode>
	 * [{    
    	"id": 1,    
    	"text": "Node 1",    
    	"state": "closed"
    	}]
               思考:此方法服务是否发布?
               服务发布:一个类发布一次.
	 */
	public List<TreeNode> findItemCatTreeNodeList(Long parentId) {
		
		//创建树形节点集合对象List<TreeNode>,封装树形节点对象
		List<TreeNode> treeNodeList = new ArrayList<TreeNode>();
		
		
		// 创建example对象
		TbItemCatExample example = new TbItemCatExample();
		
		//创建criteria对象
		Criteria criteria = example.createCriteria();
		
		//设置查询参数:根据父id查询此节点下面的子节点
		criteria.andParentIdEqualTo(parentId);
		
		//执行查询
		List<TbItemCat> catList = itemCatMapper.selectByExample(example);
		
		//循环商品类目集合对象,把商品类目值封装到树形节点对象
		for (TbItemCat tbItemCat : catList) {
			//创建单个树形节点对象TreeNode
			TreeNode node = new TreeNode();
			//封装属性节点值
			node.setId(tbItemCat.getId());
			//封装节点名称
			node.setText(tbItemCat.getName());
			//树形节点状态
			//如果is_parent=1,表示此节点有子节点,state="closed" 表示可打开状态
			//如果is_parent=0,表示没有子节点,state="open" 表示已经处于打开状态,没办法再打开
			node.setState(tbItemCat.getIsParent()?"closed":"open");
			
			//把单个节点添加集合对象			
			treeNodeList.add(node);
		}
		
		return treeNodeList;
	}

}
