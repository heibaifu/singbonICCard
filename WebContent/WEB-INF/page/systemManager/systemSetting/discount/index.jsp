<!-- 优惠方案设置 -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	$(function() {
		$('#discountForm .save').click(function() {
			validateCallback($(this).parents('form'), function(e) {
				if (e == 1) {
					alertMsg.correct('保存成功！');
					$('#discountForm input').eq(0).val('');
					refreshdiscountList();
					$('#discountForm input').each(function(){
						$(this).val('');
					});
				} else {
					alertMsg.error('保存失败！');
				}
			}, null);
		});
	});
	function refreshdiscountList() {
		$('#discountList').loadUrl('${base}/list.do');
	}
</script>
<link href="themes/css/custom.css" rel="stylesheet" type="text/css"/>
<style type="text/css">

</style>

<div class="form"
	style="float: left; display: block; overflow: auto; width: 240px; border: solid 1px #CCC; line-height: 21px; background: #fff">
	<form id="discountForm" method="post" action="${base}/save.do"
		class="pageForm required-validate">
		<div class="pageFormContent" style="padding: 200px 0 50px;">
			<dl>
				<dt>补助金额：</dt>
				<dd>
					<input type="hidden" name="id"/>
					<input type="text" name="subsidy" maxlength="20" class="digits required"/>
				</dd>
			</dl>
			<dl>
				<dt>扣费比例：</dt>
				<dd>
					<select class="combox" outerw="78" innerw="95"
						name="rate" class="required">
						<c:forEach var="i" begin="1" end="200" step="1">
							<option value="${i}" width="95">${i}</option>
						</c:forEach>
					</select>范围1-200
				</dd>
			</dl>
			<dl style="width: 300px;">
				<dt>赠送金额：</dt>
				<dd>
					<input type="text" name="giveCash" maxlength="20"
						class="digits required" max="167772"/>元
				</dd>
			</dl>
		</div>
		<div class="formBar">
			<ul class="toolBar">
				<li><div class="buttonActive">
						<div class="buttonContent save">
							<button type="button">保存</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>
<div id="discountList" class="unitBox" style="margin-left: 246px;">
	<jsp:include page="${base}/list.do" />
</div>