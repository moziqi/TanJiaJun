<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="js/jquery-2.1.3.min.js"></script>
<title>无标题文档</title>
<script language="javascript">
	//验证表单
	function clickForm(submitform) {
		//文本框
		var $name = $("#name").val();
		//不能为空格 
		if ($name.length == 0) {
			alert("供应商名字不能为空！");
			return false;
		} else if (!$name.match("^[\u4e00-\u9fa5a-zA-Z]{3,15}$")) {
			alert("供应商名字格式不对！\n【请输入3-15位的中文或英文字符】");
			return false;
		}

		var $phone = $("#phone").val();
		if ($phone.length == 0) {
			alert("电话不能为空！");
			return false;
		} else if (!$phone.match("^[0-9]{3,11}$")) {
			alert("电话格式不对！\n【请输入3-11位数字】");
			return false;
		}
		
		var $code = $("#code").val();
		if ($code.length == 0) {
			alert("邮政编号不能为空！");
			return false;
		}else if (!$code.match("^[0-9]{6}$")) {
			alert("邮政编号格式不对！\n【请输入6位数字】");
			return false;
		}

		var $adress = $("#adress").val();
		if ($adress.length < 5 ) {
			alert("地址不能少于5个字符！");
			return false;
		}else if ($adress.length > 30) {
			alert("地址不能大于30个字符！");
			return false;
		}
	}
</script>
</head>

<body>
	<div id="title_bar">
		<span id="title">系统管理&gt;&gt;供应商管理&gt;&gt;添加供应商</span>
	</div>
	<div align="center">
		<s:form action="Producter_Add" method="post"
			onsubmit="return clickForm(this)">
			<tr>
				<td bgcolor="#A0A0A0"></td>
			</tr>
			<tr>
				<td height="40" class="font42">
					<table width="600px" border="0" align="center" cellpadding="4"
						cellspacing="1" bgcolor="#DDD" class="newfont03" id="tblist" />
				</td>
			</tr>
			<tr>
				<td height="20" colspan="13" align="center" bgcolor="#EEEEEE"
					class="tablestyle_title" style="text-align: center;"><b>添加供应商信息</b></td>
			</tr>
			<tr>
				<td>
					<table width="95%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="40" class="font42">
								<table width="100%" border="0" align="center" cellpadding="4"
									cellspacing="1" bgcolor="#DDD" class="newfont03" id="tblist">
									<tr>
										<td colspan="5">以下带*为必填项：</td>
									</tr>
									<tr>
										<td><s:textfield name="producter.name" label="*供应商名称"
												id="name" /></td>
										<td>&nbsp;</td>

									</tr>
									<tr>
										<td><s:textfield name="producter.phone" label="*电话"
												id="phone" /></td>
										<td>&nbsp;</td>
										
									</tr>
									<tr>
										<td><s:textfield name="producter.code" label="*邮政编码"
												id="code" /></td>
										<td>&nbsp;</td>
										
									</tr>
									<tr>
										<td><s:textarea name="producter.adress" cols="45"
												rows="5" label="*地址" id="adress" /></td>
										<td>&nbsp;</td>										
									</tr>
									<tr>
										<s:submit align="center" value="添加" />
										<s:reset align="center" value="重置" />
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</s:form>
	</div>
</body>
</html>
