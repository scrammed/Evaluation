<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="SysPages_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="refresh" content="600;url=Top.aspx" />
	<title></title>
	<link href="../Styles/Css1/top.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript">
          function block(oEvent)
          {
//           if(window.event)
//            oEvent=window.event;
//           if(oEvent.button==2)
//            alert("鼠标右键不可用");
          }
          document.onmousedown=block;
	</script>

</head>
<body>
	<form id="Form1" runat="server">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr style="height: 62px">
			<td style="width: 370px">
				<img src="../Images/Img1/admin_t.gif" />
			</td>
			<td style="width: 50%; background-image: url(../Images/Img1/bj2.PNG)">
				&nbsp;
			</td>
			<td style="width: 600px">
				<img src="../Images/Img1/bj.png" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
