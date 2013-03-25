<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Right.aspx.cs" Inherits="SysPages_Right" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	<title>功能管理</title>
</head>
<body>
	<form id="form1" runat="server">
	<div class="main">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="#">首页</a></div>
			</div>
		</div>
		<div style="margin-left: 10px;">
		<p><asp:Literal ID="liname" runat="server"></asp:Literal>
		</p>
		<div style="width:432px; height:200px; float:left;">
		<asp:Literal ID="litxt" runat="server"></asp:Literal> 
		</div>
		<div style="float:right; width:416px;  height:200px">
		
		</div>
		<span style="clear:both;"></span>
		<div style="width:925px; height:200px; ">
		</div>
		</div>
	</div>
	</form>
</body>
</html>
