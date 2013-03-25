<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SysPages_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>沈北新区2013年民主评议软环境调查问卷系统后台</title>
	<link href="Styles/style.css" rel="stylesheet" type="text/css" />	
	<style type="text/css">
<!--
body {
	background-image: url(images/managelogin_01.png);
	background-repeat: repeat-x;
	margin-left: 0px;
	margin-top: 198px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #007DC0;
}
-->
</style>
</head>
<body>
	<form id="Form1" name="form1" method="post" runat="server">
	<div id="container">
		<div class="nn">
			<img src="Images/managelogin_04.png" width="992" height="17" alt="" /></div>
		<div class="nn">
			<img src="images/managelogin_06.png" width="992" height="22" alt="" /></div>
		<div class="nn">
			<img src="images/managelogin_07.png" width="992" height="28" alt="" /></div>
		<div>
			<img src="images/managelogin_08.png" width="992" height="30" alt="" /></div>
		<div style="width: 992px; height: 188px; background-image: url(images/managelogin_09.png)">
			<table width="990" height="111" border="0" align="right" cellpadding="0" cellspacing="0" style="float: left">
				<tr>
					<td height="45" colspan="4" valign="bottom">
						&nbsp;
					</td>
					<td width="596" align="right" valign="bottom">
					<asp:TextBox ID="txtUserName" runat="server" CssClass="input1"></asp:TextBox>
					</td>
					<td width="34" align="center" valign="bottom">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="66" colspan="4" valign="bottom">
						&nbsp;
					</td>
					<td align="right" valign="bottom">
					<asp:TextBox ID="txtPassWord" runat="server" CssClass="input1" TextMode="Password" ></asp:TextBox>
					</td>
					<td align="center" valign="bottom">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="990" height="67" border="0" align="right" cellpadding="0" cellspacing="0" style="float: left">
				<tr>
					<td height="67" colspan="4" valign="bottom">
						&nbsp;
					</td>
					<td width="605" align="right" valign="bottom">
						<a href="#">
							<asp:ImageButton ID="btnSubmit"  runat="server" ImageUrl="images/bttom.png" Width="241" Height="37" BorderStyle="None" OnClientClick="return CheckForm();" OnClick="btnSubmit_Click" />
							</a>
					</td>
					<td width="25" align="center" valign="bottom">
						&nbsp;
					</td>
				</tr>
			</table>
		</div>
		<div>
			<img src="images/managelogin_10.png" width="992" height="65" alt="" /></div>
	</div>

	<script type="text/javascript">


		function CheckForm()
		{
			if (document.getElementById("txtUserName").value == "")
			{
				alert("请输入用户名！");
				document.getElementById("txtUserName").focus();
				return false;
			}
			if (document.getElementById("txtPassWord").value == "")
			{
				alert("请输入密码！");
				document.getElementById("txtPassWord").focus();
				return false;
			}
		}
	</script>

	</form>
</body>
</html>
