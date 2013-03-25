<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Left.aspx.cs" Inherits="SysPages_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>�û���Ϣ</title>
	<link href="../../Styles/Css2/LeftMenu.css" rel="stylesheet" type="text/css" />
	<script src="../../Scripts/Site2/prototype.lite.js" type="text/javascript"></script>
	<script src="../../Scripts/Site2/moo.fx.js" type="text/javascript"></script>
	<script src="../../Scripts/Site2/moo.fx.pack.js" type="text/javascript"></script>
</head>
<body>
	<form id="form1" runat="server">
	<table border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
		<tr>
			<td width="182" valign="top">
				<div id="divContainer" runat="server" class="container">
				<%--Ŀ¼��ʼ--%>
					<h1 class="type">
						<a href="javascript:void(0)">�û���Ϣ</a></h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<img src="../../Images/Img2/menu_topline.gif" width="182" height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="../SystemUser/Site2/ChangePassWord.aspx" target="right">�����޸�</a></li>
							<li><a href="../SystemUser/Site2/UserManager.aspx" target="right">�û�����</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">��վ��Ϣ</a></h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<img src="../../Images/Img2/menu_topline.gif" width="182" height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="../SiteInfo/Site2/DeptTypeManager.aspx" target="right">��λ���͹���</a></li>
							<li><a href="../SiteInfo/Site2/DeptManager.aspx" target="right">���鵥λ����</a></li>
							<li><a href="../SiteInfo/Site2/IndexDesign.aspx" target="right">��ҳ���</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">��������</a></h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<img src="../../Images/Img2/menu_topline.gif" width="182" height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="../Pepole/Site2/BehalfManager.aspx" target="right">����������</a></li>
							<li><a href="../Pepole/Site2/VoteView.aspx" target="right">ͶƱ�ල</a></li>
							<li><a href="../Pepole/Site2/SorceCount.aspx" target="right">����ͳ��</a></li>
						</ul>
					</div>
					<%--Ŀ¼����--%>
				</div>
			</td>
		</tr>
	</table>
	<script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
		var myAccordion = new fx.Accordion(
			toggles, contents, { opacity: true, duration: 400 }
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script> 

	</form>
</body>
</html>
