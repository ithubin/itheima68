package cn.e3.utils;

import java.io.Serializable;

public class TreeNode implements Serializable{
	
	/*[{    
    	"id": 1,    
    	"text": "Node 1",    
    	"state": "closed"
    	}]*/
	//树形节点id
	private Long id;
	//树形节点名称
	private String text;
	
	//如果is_parent=1,表示此节点有子节点,state="closed" 表示可打开状态
	//如果is_parent=0,表示没有子节点,state="open" 表示已经处于打开状态,没办法再打开
	//树形节点状态
	private String state;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
	
	

}
