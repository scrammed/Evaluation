<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpBehalf.aspx.cs" Inherits="SysPages_SiteInfo_OpBehalf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="form1" runat="server">
	<div style="background-color: #FFFFFF; border:0px; width:500px; height:280px; overflow:hidden">
		<table width="99%">
			<tr class="txt">
				<td style="width:70px">
					真实姓名
				</td>
				<td style=" width:*">
					<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><span style="color: #FF0000">*</span>
					<asp:RequiredFieldValidator ID="reqtxtUserName"  runat="server" ControlToValidate="txtUserName" Display="Dynamic"  ErrorMessage="没有填写真实姓名"></asp:RequiredFieldValidator>
				</td></tr>
				<tr class="txt">
				<td>
					单位
				</td>
				<td>
					<asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr class="txt">
				<td >
					职务
				</td>
				<td>
					<asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr class="txt">
				<td >
					手机号
				</td>
				<td>
					<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><span style="color: #FF0000">*</span>
					<asp:RequiredFieldValidator ID="reqtxtPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="没有填写手机号"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="revtxtPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="手机号只能是11位数字" ValidationExpression="1[0-9]{10}"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr class="txt">
				<td>
					办公电话
				</td>
				<td>
					<asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr class="txt">
				<td >
					电子邮箱
				</td>
				<td>
					<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr class="txt" >
				<td >
					代表层面
				</td>
				<td>
				<asp:DropDownList ID="ddBehalfLevel" runat="server"></asp:DropDownList>
				</td>
				<td>
				<asp:CheckBox ID="cbIsThisDept" runat="server"  Text="本单位员工"/>			
					</td>
				<td>
					<asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
					
				</td>
			</tr>
			</table>
	</div>
	<div><asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
	</div>
	</form>
</body>
</html>
