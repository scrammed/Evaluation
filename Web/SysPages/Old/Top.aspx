<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="SysPages_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
	<script src="../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
</head>
<body>
	<form id="Form1" runat="server">
	<div id="divBody">
	</div>
	<script type="text/javascript">
		$("#divBody").load("../SysPages/Site2/Top.aspx");
	</script>
	</form>
</body>
</html>
