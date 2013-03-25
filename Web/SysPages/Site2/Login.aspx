<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Login.aspx.cs" Inherits="SysPages_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>投诉窗口管理登陆页面</title>
</head>
<body style="background-color: #F5FCFF">
	<form id="Form1" name="form1" method="post" runat="server">
	<table width="618" border="0" align="center" cellpadding="0" cellspacing="0" style="background-image: url(Images/htdl.jpg)">
		<tr>
			<td style="height: 540px">
				<table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td style="height: 44px; width: 100px" align="right" class="text">
							<strong>用户名：</strong>
						</td>
						<td colspan="2" style="height: 44px; width: 300px">
							<asp:TextBox ID="txtUserName" runat="server" MaxLength="20" Style="width: 180px;
								border-right: #8CA7D0 1px solid; border-top: #8CA7D0 1px solid; font-size: 12px;
								border-left: #8CA7D0 1px solid; border-bottom: #8CA7D0 1px solid; height: 16px;
								background-color: #F7F7F7" onmouseover="this.style.background='#ffffff';" onmouseout="this.style.background='#F7F7F7'"
								onfocus="this.select(); " size="25"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td style="height: 44px; width: 100px" align="right" class="text">
							<strong>密&nbsp;&nbsp;码：</strong>
						</td>
						<td colspan="2" style="height: 44px; width: 300px">
							<asp:TextBox ID="txtPassWord" runat="server" class="inputt" size="25" TextMode="Password"
								MaxLength="20" Style="width: 180px; border-right: #8CA7D0 1px solid; border-top: #8CA7D0 1px solid;
								font-size: 12px; border-left: #8CA7D0 1px solid; border-bottom: #8CA7D0 1px solid;
								height: 16px; background-color: #F7F7F7" onmouseover="this.style.background='#ffffff';"
								onmouseout="this.style.background='#F7F7F7'" onfocus="this.select(); "></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td style="height: 50px;" align="center" colspan="3">
							<asp:Button ID="btnSubmit" Style="height: 38px; width: 109px; border-width: 0px;"
								runat="server" Text="登陆" OnClientClick="return CheckForm();" OnClick="btnSubmit_Click" />
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<script type="text/javascript">

		function ChangeCode()
		{
			var date = new Date();
			var myImg = document.getElementById("ImageCheck");
			myImg.src = "ValidateCode.aspx?date=" + date.getMilliseconds();
			return false;
		}

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
