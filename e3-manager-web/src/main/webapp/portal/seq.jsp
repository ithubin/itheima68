<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function flashPortalSeq() {
		$.cookie('portal-state', null);
		parent.$.messager.show({
			title : '提示',
			msg : 'Portal顺序初始化成功！'
		});
		var panel = parent.index_tabs.tabs('getTab', 0);
		var frame = panel.find('iframe');
		try {
			if (frame.length > 0) {
				for ( var i = 0; i < frame.length; i++) {
					frame[i].contentWindow.document.write('');
					frame[i].contentWindow.close();
					frame[i].src = frame[i].src;
				}
				try {
					CollectGarbage();
				} catch (e) {
				}
			}
		} catch (e) {
		}
	}
</script>
<div class="well well-large" style="margin: 10px;">可以拖动面板的顺序，下次访问的时候，他会按照您更改后的顺序显示！</div>
<div class="well well-small" style="margin: 10px;">
	<button class="btn btn-primary" onclick="flashPortalSeq();">恢复初始portal顺序</button>
</div>