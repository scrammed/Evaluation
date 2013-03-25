<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="SysPages_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script src="../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
	<script src="../Scripts/jquery-ui-1.8.11.js" type="text/javascript"></script>
	<link href="../Styles/Css2/LeftMenu.css" rel="stylesheet" type="text/css" />
	<script src="../Scripts/Site2/prototype.lite.js" type="text/javascript"></script>
	<script src="../Scripts/Site2/moo.fx.js" type="text/javascript"></script>
	<script src="../Scripts/Site2/moo.fx.pack.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="divBody1">
    </div>
    <script type="text/javascript">
    	$("#divBody1").load("../SysPages/Site2/Left.aspx");
	</script>
    </form>
</body>
</html>
