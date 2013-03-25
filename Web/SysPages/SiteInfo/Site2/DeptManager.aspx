<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SiteInfo/DeptManager.aspx.cs" Inherits="SysPages_SiteInfo_DeptManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
	<link href="../../../Styles/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
	<link href="../../../Styles/themes/demos.css" rel="stylesheet" type="text/css" />
	<script src="../../../Scripts/jquery-1.9.1.js" type="text/javascript"></script>

	<script src="../../../Scripts/ui/jquery.ui.core.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.widget.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.mouse.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.draggable.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.position.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.resizable.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.button.js"></script>

	<script src="../../../Scripts/ui/jquery.ui.dialog.js"></script>
	<script src="../../../Scripts/Common.js" type="text/javascript"></script>
	
	<style type="text/css">
        .baise
        {
            background-color: White;
        }
        .tou
        {
            background-color: #eff9fc;
        }
        .titlebt1
        {
            font-size: 12px;
            line-height: 26px;
            font-weight: bold;
            color: #000000;
            background-image: url(../../../Images/Img2/top_bt.jpg);
            background-repeat: no-repeat;
            display: block;
            text-indent: 15px;
            padding-top: 5px;
        }
        .style9
        {
            width: 15%;
        }
        .style12
        {
            width: 35%;
        }
    </style>

	<script type="text/javascript" defer="defer">
		window.onload = function()
		{
			///初始化弹出层
			$(function()
			{
				$("#dialog").dialog(
                    {
                    	height: 180,
                    	width: 420,
                    	position: "center",
                    	modal: true,
                    	autoOpen: false,
                    	show: "blind",
                    	hide: "blind",
                    	create: function(event, ui) { }

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
			iframe.attr("width", 380);
			iframe.attr("height", 220);

			$("#dialog").dialog("open");
		}
	
		function Refrash()
		{
			var pathname = "../Site2/DeptManager.aspx";
			var search = document.location.search
			var start = search.indexOf("&date=");
			var url = pathname + ((start == -1) ? search : search.substring(0, start)) + (search.length == 0 ? "?date=" : "&date=") + new Date();

			location.href = url;
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
	<div>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="../../../Images/Img2/mail_leftbg.gif">
					<img src="../../../Images/Img2/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="../../../Images/Img2/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt1">
									单位管理</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="../../../Images/Img2/mail_rightbg.gif">
					<img src="../../../Images/Img2/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>
			<tr style="height: 500px">
				<td valign="middle" background="../../../Images/Img2/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<!--*****content****-->
					<br />
					<table width='98%' border='0' align='center' cellpadding='2' cellspacing='1' class='border' id="Table1">
						<tr>
							<td colspan="4" style="height: 2px" align="center">
								<img src="../../../Images/Img2/add.gif" onclick="ClickOp()" style="float: left;" />
								<strong>单位列表</strong>
							</td>
						</tr>
						<tr style="background-color: #CDF0F3;" valign="top">
							<td colspan="4" class="style4">
								<table border="0" cellpadding="0" cellspacing="1" style="width: 100%">
									<asp:Repeater ID="repList" runat="server">
										<HeaderTemplate>
											<tr class='topbg' align="center">
												<td style="width: 10%;">
													序号
												</td>
												<td style="width: 35%">
													单位名称
												</td>
												<td style="width: 25%">
													单位类型
												</td>	
												<td style="width: 25%">
													排序
												</td>
												<td style="width: 30%">
													操作
												</td>
											</tr>
										</HeaderTemplate>
										<ItemTemplate>
											<tr align="center">
												<td style="background-color: #ffffff">
													<%#Container.ItemIndex+1 %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.Department)Container.DataItem).DeptName %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.Department)Container.DataItem).DeptTypeName %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.Department)Container.DataItem).Sort %>
												</td>
												<td style=" background-color: #ffffff">
												<table>
														<tr>
															<td>
																<img src="../../../Images/Img1/right_xg.png" onclick="ClickOp(<%#((Model.Department)Container.DataItem).Id.ToString() %>)" />
															</td>
															<td>
																<asp:ImageButton ID="ImageButton1" OnClientClick="return confirm('确定删除！');" CommandArgument="<%#((Model.Department)Container.DataItem).Id.ToString() %>" runat="server" ImageUrl="~/Images/Img1/right_sc.png" OnClick="btnDel_Click" />
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</ItemTemplate>
									</asp:Repeater>
								</table>
							</td>
						</tr>
						<tr valign="top" align="center">
							<td>
								<webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" PageSize="10" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PrevPageText="上一页">
								</webdiyer:AspNetPager>
								<asp:Label ID="labErr" runat="server"></asp:Label>
							</td>
						</tr>
					</table>
					<!--****contentend*****-->
				</td>
				<td background="../../../Images/Img2/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td valign="bottom" background="../../../Images/Img2/mail_leftbg.gif">
					<img src="../../../Images/Img2/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="../../../Images/Img2/buttom_bgs.gif">
					<img src="../../../Images/Img2/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="../../../Images/Img2/mail_rightbg.gif">
					<img src="../../../Images/Img2/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>
	</div>
	<div id="dialog" style="display: none;">
		<iframe id="if" frameborder="0" scrolling="no"></iframe>
	</div>
	</form>
</body>
</html>
