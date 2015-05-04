<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/main.css"/>

<title>无标题文档</title>
</head>

<body>
<div id="title_bar">
	<span id="title" >系统管理&gt;&gt;医院药房管理&gt;&gt;添加医院药房</span>
</div>
<div align="center">
	<s:form action="Hospital_Add" method="post">
			<tr>
				<td bgcolor="#A0A0A0"></td>
			</tr>
			<tr>
				<td height="40" class="font42">
					<table width="600px" border="0" align="center" cellpadding="4"
						cellspacing="1" bgcolor="#DDD" class="newfont03" id="tblist" /></td>
			</tr>
			<tr>
				<td height="20" colspan="13" align="center" bgcolor="#EEEEEE"
					class="tablestyle_title" style="text-align: center;"><b>添加医院药房信息</b></td>
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
										<td><s:textfield name="hospital.name" label="*医院名称" />
										</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td><s:textfield name="hospital.manager" label="*负责人" />
										</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td><s:textfield name="hospital.phone" label="*电话" />
										</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td><s:textarea name="hospital.adress" cols="45" rows="5"
												label="地址" />
										</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<s:submit align="center" value="添加" />
										<s:reset align="center" value="重置" />
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
		</s:form>
</div>
</body>
</html>
