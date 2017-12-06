<%@ page language="java" pageEncoding="UTF-8"%>
<div class="well well-large" style="margin: 10px;">如果数据库混乱，或出现数据异常，请点击恢复数据库至初始化状态按钮</div>
<div class="well well-small" style="margin: 10px;">
	<button class="btn btn-info" onclick="top.location.replace('${pageContext.request.contextPath}/init.jsp')">恢复数据库至初始化状态</button>
</div>