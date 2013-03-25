<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>沈北新区2013年民主评议软环境调查问卷系统登录</title>
	<link href="styles/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
	color: #FFF;
}
body {
	background-image: url(images/bg.jpg);
	background-repeat: repeat-x;
	margin-left: 0px;
	margin-top: 139px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #007dc0;
}
input{ background:transparent; border:0px; height:20px; width:200px; color: #069; font-size:14px; line-height:22px;}
-->
</style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="container">
		<div class="nn">
			<img src="images/login_03.png" width="765" height="91" alt="" /></div>
		<div class="nn">
			<img src="images/login_05.png" width="765" height="38" alt="" /></div>
		<div class="nn">
			<img src="images/login_06.png" width="765" height="88" alt="" /></div>
		<div class="nn" style="background: url(images/login_07.png); width: 765px; height: 120px;">
			<table width="444" height="110" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="110" colspan="4" valign="bottom">
						<table width="225" border="0" align="right" cellpadding="0" cellspacing="0">
							<tr>
								<td width="225" height="37" align="center" valign="bottom">
									<asp:TextBox ID="txtUserName" runat="server" Text="*填写您的真实姓名" onfocus="if(this.value=='*填写您的真实姓名'){this.value='';}"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td height="38" align="center" valign="bottom">
									<asp:TextBox ID="txtPassWord" runat="server" Text="*填写您的真实手机号码" onfocus="if(this.value=='*填写您的真实手机号码'){this.value='';}"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td height="5">
								</td>
							</tr>
						</table>
					</td>
					<td width="95" align="center" valign="bottom">
						<asp:ImageButton ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ImageUrl="images/login.png" Width="75" Height="69" border="0" OnClientClick="return CheckForm();" />
					</td>
				</tr>
			</table>
		</div>
		<div class="nn">
			<img src="images/login_08.png" width="765" height="90" alt="" /></div>
		<div class="nn">
			<img src="images/login_09.png" width="765" height="69" alt="" /></div>
		<div class="nn">
			<img src="images/login_10.png" width="765" height="74" alt="" /></div>
	</div>

	<script type="text/javascript">

		function CheckForm()
		{
			var userName = document.getElementById("txtUserName").value.replace(' ','').replace('　', '');
			if (userName == "" || userName == "*填写您的真实姓名")
			{
				alert("请输入用户名！");
				document.getElementById("txtUserName").focus();
				return false;
			}
			var pwd = document.getElementById("txtPassWord").value.replace(' ','').replace('　', '');
			if (pwd == "" || pwd == "*填写您的真实手机号码")
			{
				alert("请输入真实手机号码！");
				document.getElementById("txtPassWord").focus();
				return false;
			}

		}
	</script>

	</form>
</body>
</html>
