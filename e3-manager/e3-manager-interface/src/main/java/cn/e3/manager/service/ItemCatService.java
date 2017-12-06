package cn.e3.manager.service;

import java.util.List;

import cn.e3.utils.TreeNode;

public interface ItemCatService {
	
	/**
	 * 需求:根据父id查询此节点下面的子节点
	 * 参数:Long parentId
	 * 返回值:List<TreeNode>
	 * [{    
    	"id": 1,    
    	"text": "Node 1",    
    	"state": "closed"
    	}]
	 */
	public List<TreeNode> findItemCatTreeNodeList(Long parentId);

}
