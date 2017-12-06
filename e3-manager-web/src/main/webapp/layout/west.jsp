<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function(){
		$('.easyui-accordion ul').each(function(i,e){			
			$(e).tree({
				onClick: function(node){
					if($(e).tree("isLeaf",node.target)){
							addTab({
								url : node.attributes.url,
								title : node.text,
								iconCls : node.iconCls
							})
							
						}
					}
				})
			
			
		});
		
		});
	function addTab(params) {
		var iframe = '<iframe src="' + params.url + '" frameborder="0" style="border:0;width:100%;height:98%;"></iframe>';
		var t = $('#index_tabs');
		var opts = {
			title : params.title,
			closable : true,
			iconCls : params.iconCls,
			content : iframe,
			border : false,
			fit : true
		};
		if (t.tabs('exists', opts.title)) {
			t.tabs('select', opts.title);
			parent.$.messager.progress('close');
		} else {
			t.tabs('add', opts);
		}
	}
</script>
<div class="easyui-accordion" data-options="fit:true,border:false">	
	<div title="商品管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">         	
	         		<li data-options="attributes:{'url':'item-add'}">商品设置</li>
	         		<li data-options="attributes:{'url':'item-list'}">商品列表</li>
	         		<li data-options="attributes:{'url':'item-param-list'}">规格参数</li>
	         		<li data-options="attributes:{'url':'item-param-list'}">品牌管理</li>
	         		<li data-options="attributes:{'url':'item-param-list'}">商品分类</li>
	        		<li data-options="attributes:{'url':'item-param-list'}">用户评论</li>
	        		<li data-options="attributes:{'url':'item-param-list'}">降价通知</li>
         </ul>
	</div>
	<div title="广告管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	
	         		<li data-options="attributes:{'url':'content-category'}">内容分类管理</li>
	         		<li data-options="attributes:{'url':'content'}">内容管理</li>
	         		<li data-options="attributes:{'url':'index-manager'}">索引库维护</li>
	         
         </ul>
	</div>
	<div title="促销管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>夺宝奇兵</li>
			<li>秒杀活动</li>
			<li>红包类型</li>
			<li>团购活动</li>
			<li>专题管理</li>
			<li>拍卖活动</li>
			<li>优惠活动</li>
			<li>批发管理</li>
			<li>超值礼包</li>
			<li>积分商城商品</li>
			<li>预售活动</li>
			<li>优惠券</li>
			<li>拼团活动</li>
			<li>砍价活动</li>
		</ul>
	</div>
	<div title="库存管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>库存入库</li>
			<li>库存出库</li>
			<li>进销存管理</li>
			<li>供货商列表</li>
		</ul>
	</div>
	<div title="订单管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>订单列表</li>
			<li>缺货登记</li>
			<li>添加订单</li>
			<li>发货单列表</li>
			<li>退货单列表</li>
			<li>批量添加订单</li>
			<li>退货原因列表</li>
			<li>退换货申请列表</li>
			<li>投诉管理</li>
		</ul>
	</div>
	<div title="财务管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>客户统计</li>
			<li>订单统计</li>
			<li>会员排行</li>
			<li>销售明细</li>
			<li>访问购买率</li>
		</ul>
	</div>
	
	<div title="邮件管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>邮件服务器设置</li>
			<li>邮件订阅管理</li>
			<li>邮件队列管理</li>
			<li>邮件模版管理</li>
		</ul>
	</div>
	<div title="数据管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>数据备份</li>
			<li>数据表优化</li>
			<li>SQL查询</li>
			<li>修改表前缀</li>
			<li>源站点设置</li>
			<li>数据迁移</li>
			<li>缓存清除</li>
		</ul>
	</div>
	<div title="模版管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>模版管理</li>
			<li>模版选择</li>
		</ul>
	</div>
	<div title="权限管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>管理员列表</li>
			<li>管理员日志</li>
			<li>管理员留言</li>
			<li>角色管理</li>
			<li>客户管理</li>
		</ul>
	</div>
	<div title="会员管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>会员列表</li>
			<li>会员留言</li>
			<li>充值提现申请</li>
			<li>资金管理</li>
			<li>收货地址列表</li>
			<li>会员白条</li>
			<li>注册项设置</li>
			<li>短信群发</li>
		</ul>
	</div>
	<div title="文章管理" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>文章列表</li>
			<li>文章分类</li>
		</ul>
	</div>
	<div title="移动端访问" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>授权登录</li>
			<li>广告管理</li>
			<li>广告位管理</li>
			<li>导航管理</li>
		</ul>
	</div>
	<div title="微信公众号" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>微信号设置</li>
			<li>群发消息</li>
			<li>自动回复</li>
			<li>自定义菜单</li>
			<li>粉丝管理</li>
			<li>素材管理</li>
			<li>二维码管理</li>
			<li>消息提醒</li>
			<li>小程序管理</li>
		</ul>
	</div>
	<div title="系统设置" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>商店设置</li>
			<li>支付方式</li>
			<li>地区配送</li>
			<li>计划任务</li>
			<li>友情连接</li>
			<li>合作伙伴</li>
			<li>验证码设置</li>
			<li>文件权限</li>
			<li>自定义导航</li>
			<li>打印设置</li>
			<li>站点地图</li>
			<li>检索记录</li>
		</ul>
	</div>
	<div title="云服务中心" data-options="border:false">
		<ul class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
			<li>短语设置</li>
			<li>阿里OSS</li>
			<li>阿里短信</li>
			<li>第三方登录</li>
		</ul>
	</div>
</div>