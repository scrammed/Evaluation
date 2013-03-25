<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Instructions.aspx.cs" Inherits="BehalfVote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>沈北新区2013年民主评议软环境调查问卷系统</title>

	<link href="Styles/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
	<link href="Styles/themes/demos.css" rel="stylesheet" type="text/css" />
	<script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>

	<script src="Scripts/Common.js" type="text/javascript"></script>

	<link href="styles/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
<!--

body {
	background-image: url(images/bg.jpg);
	background-repeat: repeat-x;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #007dc0;
}
.bor{ border-left:1px solid #036; border-right:1px solid #036;}
-->
</style>
	<style type="text/css">
	 
.rblist td
{
	 width:25%;
	
}
		
<!--
.td1 {	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #E7E7E7;
	border-bottom-color: #E7E7E7;
}
.td2 	
{
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #E7E7E7;
	border-left-color: #E7E7E7;
}
-->
</style>

	<script type="text/javascript">
		window.onload = function() { $("#s_date").html(get_date()); };
		function AbleSubmit()
		{
			document.getElementById('btnSubmit').disabled = false;
		 }
	</script>

</head>
<body>
	<form id="form2" runat="server">
	<div id="container2">
		<div>
			<img src="images/banner.jpg" width="950" height="218" /></div>
		<div class="nn2">
			<table width="931" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="415" height="33">
						当前日期：<span id="s_date"></span>
					</td>
					<td width="516" align="right">
						欢迎登陆 2013年沈阳市民主评议软环境建设调查问卷
					</td>
				</tr>
			</table>
		</div>
		<div class="nn3">
			<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#93bee2" class="td2" id="Table1">
				<tr>
					<td height="60" colspan="2" align="center" bgcolor="#DBDBDB" class="td1" style="font-size: 16px;">
						<strong>评议问卷须知</strong>
					</td>
				</tr>
				<tr>
					<td height="60" colspan="2" bgcolor="#DBDBDB" class="td1" style="font-size: 16px;">
						<asp:Literal ID="liInstructions" runat="server"></asp:Literal>
					</td>
				</tr>
				<tr>
					<td height="60" colspan="2" bgcolor="#DBDBDB" class="td1" style="font-size: 16px; text-align:center;">
					 <input type="checkbox" id="cbEnd" onclick="AbleSubmit();" />阅读完毕
					</td>
				</tr>
			</table>
			<div class="nn4">
				<label>
					<asp:Button ID="btnSubmit" Enabled="false" CssClass="button" runat="server" Text="下一步" OnClick="btnSubmit_Click" />
				</label>
			</div>
		</div>
	</div>
	<table width="200" border="0" align="center" cellpadding="0" cellspacing="0" class="bor">
		<tr>
			<td>
			</td>
		</tr>
	</table> 
	</form>
</body>
</html>
