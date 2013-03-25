<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SiteInfo/OpDeptType.aspx.cs"
	Inherits="SysPages_SiteInfo_OpDeptType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
 
</head>
<body>
    <form id="form1" runat="server">
	<div style="background-color: #FFFFFF; width:100%; overflow:hidden; font-size: 12px;">
		<table id="Table1" style="border-collapse: collapse;" bordercolor="#93bee2"
			cellspacing="0" cellpadding="0" width="92%" align="center" border="1">
			<tr  ><td style="height: 38px; text-align: right">
		类型名称：</td><td>&nbsp;&nbsp; <asp:TextBox ID="txtTypeName" runat="server"></asp:TextBox></td><td><asp:Button ID="btnSubmit"  runat="server" Text="确定" onclick="btnSubmit_Click"/></td></tr></table>
		<asp:RequiredFieldValidator ID="reqtxtTypeName" runat="server" ControlToValidate="txtTypeName" Display="Dynamic" ErrorMessage="没有填写类型名称"></asp:RequiredFieldValidator>
	</div>
	<div class="txt">
		<asp:ValidationSummary ID="ValidationSummary1"  runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
	</div>
    </form>
</body>
</html>
