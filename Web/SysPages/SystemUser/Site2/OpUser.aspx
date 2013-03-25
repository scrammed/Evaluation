<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/OpUser.aspx.cs" Inherits="SysPages_SystemUser_OpUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
        .baise
        {
            background-color: White;
        }
        .tou
        {
            background-color: #eff9fc;
        }
        .titlebt1
        {
            font-size: 12px;
            line-height: 26px;
            font-weight: bold;
            color: #000000;
            background-image: url(../../../Images/Img2/top_bt.jpg);
            background-repeat: no-repeat;
            display: block;
            text-indent: 15px;
            padding-top: 5px;
        }
        .style9
        {
        	
        }
        .style12
        {
            
        }
    	.style13
		{
			width: 100px;
		}
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<div  style=" width:367px; overflow: hidden">
		<table style="background-color: #CDF0F3; width: 100%" border='0' align='center' cellpadding='2' cellspacing='1' class='border'>
			<tr>
				<td class="style9 tou" align="right">
					用户名称：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtUserAccount" AutoCompleteType="Disabled" Width="100px" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="reqtxtUserAccount" runat="server" ControlToValidate="txtUserAccount" Display="Dynamic" ErrorMessage="没有填写登录账号"></asp:RequiredFieldValidator>
				</td></tr>
				<tr>
				<td class="style9 tou" align="right">
					性别：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:DropDownList ID="ddSex" runat="server">
						<asp:ListItem Text="男" Value="1"></asp:ListItem>
						<asp:ListItem Text="女" Value="0"></asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					登录名：&nbsp;
				</td>
				<td class="style12 baise" align="left">	<asp:TextBox ID="txtDisplayName" Width="100px" runat="server"></asp:TextBox>
			
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					登陆密码：&nbsp;
				</td>
				<td class="style12 baise" align="left">
						<asp:TextBox ID="txtPwd" TextMode="Password" AutoCompleteType="Disabled" Width="100px" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="reqtxtPwd" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="没有填写密码"></asp:RequiredFieldValidator>
			 </td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<asp:Button ID="btnSubmit" Text="确定" runat="server" OnClick="btnSubmit_Click" />
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
