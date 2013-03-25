<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/OpUser.aspx.cs" Inherits="SysPages_SystemUser_OpUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="form1" runat="server">
	<div style="background-color: #FFFFFF; width:380px; overflow:hidden">
		<table id="Table1" style="border-collapse: collapse; margin-top: 5px; font-size: 12px;"
			bordercolor="#93bee2" cellspacing="0" cellpadding="0" width="99%"  
			border="1">
			<tr align="right" height="30" width="20%">
				<td style=" width: 80px">
					登录名：
				</td>
				<td style="text-align:left;">
					&nbsp;&nbsp;<asp:TextBox ID="txtUserAccount" AutoCompleteType="Disabled" Width="100px"  runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="reqtxtUserAccount" runat="server" ControlToValidate="txtUserAccount" Display="Dynamic" ErrorMessage="没有填写登录账号"></asp:RequiredFieldValidator>
				</td></tr>
				<tr align="right" height="30" width="20%">
				<td>
					密码：
				</td>
				<td style="text-align:left;">
					&nbsp;&nbsp;<asp:TextBox ID="txtPwd" TextMode="Password" AutoCompleteType="Disabled"  Width="100px" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="reqtxtPwd" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="没有填写密码"></asp:RequiredFieldValidator>
				</td>
			</tr>	
			<tr align="right" height="30" width="20%">
				<td>
					用户名：
				</td>
				<td style="text-align: left;">
					&nbsp;&nbsp;<asp:TextBox ID="txtDisplayName" Width="100px" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr align="right" height="30" width="20%">
				<td>
					性别：
				</td>
				<td style="text-align: left;">
					&nbsp;&nbsp;
					<asp:DropDownList ID="ddSex" runat="server">
						<asp:ListItem Text="男" Value="1"></asp:ListItem>
						<asp:ListItem Text="女" Value="0"></asp:ListItem>
					</asp:DropDownList>
					<asp:Button ID="btnSubmit" Text="确定"  runat="server" onclick="btnSubmit_Click" />
				</td>
			</tr>
			</table>
	</div>
	<div>
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
	</div>
	<script type="text/javascript">
		window.onload = function()
		{
			parent.IFrameReSize("if");
			parent.IFrameReSizeWidth("if");
		}
	</script>
	</form>
</body>
</html>
