<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
	CodeFile="~/SysPages/SiteInfo/IndexDesign.aspx.cs" Inherits="SysPages_SiteInfo_IndexDesign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
	<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	<title>网站信息 - 单位管理</title>
	<link href="../../../Styles/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
	<link href="../../../Styles/themes/demos.css" rel="stylesheet" type="text/css" />
	<link href="../../../Controls/fckeditor/_samples/sample.css" />

	<script src="../../../Scripts/jquery-1.9.1.js" type="text/javascript"></script>

	<script src="../../../Scripts/ui/jquery.ui.core.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.widget.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.mouse.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.draggable.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.position.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.resizable.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.button.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.dialog.js"></script>
	<script type="text/javascript" src="../../../Controls/fckeditor/fckeditor.js"></script>
	<script type="text/javascript" defer="defer">
		window.onload = function()
		{
			///初始化弹出层
			$(function()
			{
				$("#dialog").dialog(
                    {
                    	height:220,
                    	width:350,
                    	position: "center",
                    	modal: true,
                    	autoOpen: false,
                    	show: "blind",
                    	hide: "blind",
                    	create: function(event, ui) {  }

                    });				
			});
		}
		///关闭选择窗口
		function Close()
		{
			$("#dialog").dialog("close");
		}
		function Open()
		{
			$("#dialog").dialog("open");
		}

		function ClickOp(id)
		{
			var url = "OpDept.aspx?1=1";
			if (id)
			{
				url += "&id=";
				url += id;
			}

			url += "&date=";
			url += new Date;

			var iframe = $("#if");
			iframe.attr("src", url);
			iframe.attr("width", "300");
			iframe.attr("height", "100");

			$("#dialog").dialog("open");
		}

		function Refrash()
		{
			var pathname = "../SysPages/SiteInfo/DeptManager.aspx";
			var search = document.location.search
			var start = search.indexOf("&date=");
			var url = pathname + ((start == -1) ? search : search.substring(0, start)) + (search.length == 0 ? "?date=" : "&date=") + new Date();

			location.href = url;
		}


		window.onload = function()
		{
			var sBasePath = "<%=this.Request.ApplicationPath %>/Controls/fckeditor/";
			var oFCKeditor = new FCKeditor('txtContent');
			oFCKeditor.BasePath = sBasePath;

			oFCKeditor.Height = "500px";
			oFCKeditor.Width = "100%";
			oFCKeditor.ReplaceTextarea();
		}
	</script>


</head>
<body>
	<form id="form1" runat="server" style="background-image: url(../../../Images/Img1/right_z.gif)">
	<div class="main">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="index.aspx" target="_parent">首页</a> &gt;&gt; 网站信息 &gt;&gt; 首页设计</div>
			</div>
		</div>
		<div>
			<table border="0" cellspacing="0" cellpadding="0" width="99%">
				<tr>
					<td width="8" valign="top">
						<img src="../../../Images/Img1/right_t.gif" width="8" height="30" />
					</td>
					<td width="99%" valign="top" background="../../../Images/Img1/right_z.gif">
						<table border="0" cellspacing="0" cellpadding="0" style="width: 100%">
							<tr>
								<td width="22" valign="middle">
									<img src="../../../Images/Img1/bb.jpg" width="22" height="18" />
								</td>
								<td align="left" style="font-size: 12px" width="18%" height="30" valign="middle">
									&nbsp;&nbsp;设计
								</td>
								<td align="left" style="font-size: 12px" width="7%"" " height="30">
								</td>
								<td width="75%" align="right" style="font-size: 12px" height="30" valign="middle">
								</td>
							</tr>
						</table>
					</td>
					<td width="7" valign="top" background="../../../Images/Img1/right_t1.gif">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td valign="top" background="../../../Images/Img1/right_z1.gif">
						&nbsp;
					</td>
					<td valign="top">
						<table id="Table1" style="border-collapse: collapse; font-size: 12px;" bordercolor="#93bee2"
							cellspacing="0" cellpadding="0" width="92%"  border="1">
							<tr  style="height:25px">
								<td align="right">
									网站名称：
								</td>
								<td>
									<asp:TextBox ID="txtWebName" runat="server" Width="384px" CssClass="txt"></asp:TextBox>
								</td>
							</tr>
							<tr style="height:25px">
								<td align="right">
									网址：
								</td>
								<td>
									<asp:TextBox ID="txt_url" runat="server" Width="384px" CssClass="txt"></asp:TextBox>
									<span >（http://www.baidu.com）</span>
								</td>
							</tr>
							<tr style="height: 25px"> 
								<td align="right">
									是否开启评议：
								</td>
								<td>
									<asp:RadioButton ID="rbYes" runat="server" GroupName="py" Text="是" />
									<asp:RadioButton ID="rbNo" runat="server" GroupName="py" Text="否" />
								</td>
							</tr>
							<tr style="height: 25px">
								<td style="vertical-align: top" align="right">
									评议须知：
								</td>
								<td>
									<asp:TextBox TextMode="MultiLine" name="txtContent" ID="txtContent" runat="server"
										Rows="10" cols="80" Style="width: 100%; height: 300px" />
								</td>
							</tr>
							<tr>
								<td colspan="2" class="style4">
								</td>
							</tr>
							<tr>
								<td colspan="2" class="style4" align="center">
									<asp:Button ID="btnSave" runat="server" Text="保  存" OnClick="btnSave_Click" Style="height: 23px;
										width: 50px;" />
								</td>
							</tr>
						</table>
					</td>
					<td width="7" background="../../../Images/Img1/right_z2.gif">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td background="../../../Images/Img1/right_t1.gif">
					</td>
					<td align="right" style="font-size: 12px">
						&nbsp;
					</td>
					<td background="../../../Images/Img1/right_z2.gif">
					</td>
				</tr>
				<tr>
					<td valign="top">
						<img src="../../../Images/Img1/right_foot.gif" width="8" height="28" />
					</td>
					<td valign="top" background="../../../Images/Img1/right_foo_z.gif">
						<table width="739" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="7" height="22">
									&nbsp;
								</td>
								<td width="38">
									&nbsp;
								</td>
								<td width="7">
									&nbsp;
								</td>
								<td width="38">
									&nbsp;
								</td>
								<td width="7">
									&nbsp;
								</td>
								<td width="38">
									&nbsp;
								</td>
								<td width="7">
									&nbsp;
								</td>
								<td width="38">
									&nbsp;
								</td>
								<td width="418">
									&nbsp;
								</td>
								<td width="228" id="right_s">
									<a href="/"></a>
								</td>
							</tr>
						</table>
					</td>
					<td valign="top">
						<img src="../../../Images/Img1/righ_foot1.gif" width="7" height="28" />
					</td>
				</tr>
			</table>
		</div>
	</div>
	</form>
</body>
</html>
