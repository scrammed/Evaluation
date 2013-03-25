<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Pepole/OpBehalf.aspx.cs" Inherits="SysPages_SiteInfo_OpBehalf" %>

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
	<div style="width: 367px; overflow: hidden">
		<table style="background-color: #CDF0F3; width: 100%" border='0' align='center' cellpadding='2' cellspacing='1' class='border'>
			<tr>
				<td class="style9 tou" align="right">
					真实姓名：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><span style="color: #FF0000">*</span>
					<asp:RequiredFieldValidator ID="reqtxtUserName" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="没有填写真实姓名"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					单位：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					职务：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					手机号：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><span style="color: #FF0000">*</span>
					<asp:RequiredFieldValidator ID="reqtxtPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="没有填写手机号"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="revtxtPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="手机号只能是11位数字" ValidationExpression="1[0-9]{10}"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					办公电话：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					电子邮箱：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="style9 tou" align="right">
					代表层面：&nbsp;
				</td>
				<td class="style12 baise" align="left">
					<asp:DropDownList ID="ddBehalfLevel" runat="server">
					</asp:DropDownList>
					<asp:CheckBox ID="cbIsThisDept" runat="server" Text="本单位员工" />
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
