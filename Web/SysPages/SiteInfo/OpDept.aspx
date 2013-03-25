<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpDept.aspx.cs" Inherits="SysPages_SiteInfo_OpDept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="form1" runat="server">
	<div style="background-color: #FFFFFF">
		<table>
			<tr class="txt">
				<td>
					单位名称
				</td>
				<td>
					<asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="reqtxtDeptName" runat="server" ControlToValidate="txtDeptName" Display="Dynamic" ErrorMessage="没有填写部门名称"></asp:RequiredFieldValidator>
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr class="txt">
				<td>
					排序
				</td>
				<td>
					<asp:TextBox ID="txtSort" runat="server"></asp:TextBox>
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr class="txt">
				<td>
					单位类型
				</td>
				<td><asp:DropDownList ID="ddDetpType" runat="server"></asp:DropDownList>
				</td>
				<td>					
					<asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
					
				</td>
			</tr></table>
	</div>
	<div>
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
	</div>
	</form>
</body>
</html>
