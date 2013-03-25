<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeptManager.aspx.cs" Inherits="SysPages_SiteInfo_DeptManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
	<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	<title>网站信息 - 单位管理</title>
	<link href="../../Styles/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
	<link href="../../Styles/themes/demos.css" rel="stylesheet" type="text/css" />
	<script src="../../Scripts/jquery-1.9.1.js" type="text/javascript"></script>

	<script src="../../Scripts/ui/jquery.ui.core.js"></script>

	<script src="../../Scripts/ui/jquery.ui.widget.js"></script>

	<script src="../../Scripts/ui/jquery.ui.mouse.js"></script>

	<script src="../../Scripts/ui/jquery.ui.draggable.js"></script>

	<script src="../../Scripts/ui/jquery.ui.position.js"></script>

	<script src="../../Scripts/ui/jquery.ui.resizable.js"></script>

	<script src="../../Scripts/ui/jquery.ui.button.js"></script>

	<script src="../../Scripts/ui/jquery.ui.dialog.js"></script>

	<script type="text/javascript" defer="defer">
		window.onload = function()
		{
			///初始化弹出层
			$(function()
			{
				$("#dialog").dialog(
                    {
                    	height: "220",
                    	width: "350",
                    	position: "center",
                    	modal: true,
                    	autoOpen: false,
                    	show: "blind",
                    	hide: "blind",
                    	create: function(event, ui) { $(".ui-widget-header").hide(); }

                    });

                    $("#dialog").dialog({ buttons: { "关闭": function() { $(this).dialog("close"); } } });
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
			var pathname = "../SiteInfo/DeptManager.aspx";
			var search = document.location.search
			var start = search.indexOf("&date=");
			var url = pathname + ((start == -1) ? search : search.substring(0, start)) + (search.length == 0 ? "?date=" : "&date=") + new Date();

			location.href = url;
		}
	</script>

</head>
<body>
	<form id="form1" runat="server" style="background-image: url(../../Images/Img1/right_z.gif)">
	<div style="background-color: #FFFFFF">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="#">单位管理</a></div>
			</div>
		</div>
		<div style="margin-left: 10px;">
			<table border="0" cellspacing="0" cellpadding="0" width="99%">
				<tr>
					<td width="8" valign="top">
						<img src="../../Images/Img1/right_t.gif" width="8" height="30" />
					</td>
					<td width="99%" valign="top" background="../../Images/Img1/right_z.gif">
						<table border="0" cellspacing="0" cellpadding="0" style="width: 100%">
							<tr>
								<td width="9">
									&nbsp;
								</td>
								<td width="22" valign="middle">
									<img src="../../Images/Img1/right_xz.png" onclick="ClickOp()" />
								</td>
								<td width="7">
									&nbsp;
								</td>
								<td align="left" style="font-size: 12px" width="18%" height="30" valign="middle">
									&nbsp;
								</td>
								<td align="left" style="font-size: 12px" width="7%"" " height="30">
									&nbsp;
								</td>
								<td width="70%" align="right" style="font-size: 12px" height="30" valign="middle">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
					<td width="7" valign="top" background="../../Images/Img1/right_t1.gif">
						&nbsp;
					</td>
				</tr>
				<tr class="txt">
					<td valign="top" background="../../Images/Img1/right_z1.gif">
						&nbsp;
					</td>
					<td valign="top">
						<table width="99%">
							<tr>
								<td style="width: 50px">
									序号
								</td>
								<td>
									单位名称
								</td>
								<td>
									单位类型
								</td>
								<td>
									操作
								</td>
							</tr>
							<asp:Repeater ID="repList" runat="server">
								<ItemTemplate>
									<tr class="txt">
										<td style="width: 50px">
											<%#Container.ItemIndex + 1 + ((this.AspNetPager1.CurrentPageIndex-1) * this.AspNetPager1.PageSize)%>
										</td>
										<td>
											<%#((Model.Department)Container.DataItem).DeptName %>
										</td>
										<td>
											<%#((Model.Department)Container.DataItem).DeptTypeName %>
										</td>
										<td>
										<table><tr><td><img src="../../Images/Img1/right_xg.png" onclick="ClickOp(<%#((Model.Department)Container.DataItem).Id.ToString() %>)" /></td><td><asp:ImageButton ID="btnDel" OnClientClick="return confirm('确定删除！');" CommandArgument="<%#((Model.Department)Container.DataItem).Id.ToString() %>" runat="server" ImageUrl="~/Images/Img1/right_sc.png" OnClick="btnDel_Click" /></td></tr></table>
											
											
										</td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						</table>
						<webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" PageSize="10" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PrevPageText="上一页">
						</webdiyer:AspNetPager>
					</td>
					<td width="7" background="../../Images/Img1/right_z2.gif">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td valign="top">
						<img src="../../Images/Img1/right_foot.gif" width="8" height="28" />
					</td>
					<td valign="bottom" background="../../Images/Img1/right_foo_z.gif">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
					<td valign="top">
						<img src="../../Images/Img1/righ_foot1.gif" width="7" height="28" />
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div id="dialog" style="display: none;">
		<iframe id="if" frameborder="0" scrolling="auto"></iframe>
	</div>
	</form>
</body>
</html>
