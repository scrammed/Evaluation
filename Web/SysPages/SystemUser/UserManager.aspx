<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/UserManager.aspx.cs" Inherits="SysPages_SystemUser_UserManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>用户信息 - 用户管理</title>
	<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
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
                    	width: "420",
                    	height: "270",
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
			var url = "OpUser.aspx?1=1";
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
		
		//iframe高度自适应
		function IFrameReSize(iframename)
		{
			var pTar = document.getElementById(iframename);
			if (pTar)
			{  //ff
				if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight)
				{
					pTar.height = pTar.contentDocument.body.offsetHeight;
				} //ie
				else if (pTar.Document && pTar.Document.body.scrollHeight)
				{
					pTar.height = pTar.Document.body.scrollHeight;
				}
			}
		}
		//iframe宽度自适应
		function IFrameReSizeWidth(iframename)
		{
			var pTar = document.getElementById(iframename);
			if (pTar)
			{  //ff
				if (pTar.contentDocument && pTar.contentDocument.body.offsetWidth)
				{
					pTar.width = pTar.contentDocument.body.offsetWidth;
				}  //ie
				else if (pTar.Document && pTar.Document.body.scrollWidth)
				{
					pTar.width = pTar.Document.body.scrollWidth;
				}
			}
		}
		function Refrash()
		{
			var pathname = "../SystemUser/UserManager.aspx";
			var search = document.location.search
			var start = search.indexOf("&date=");
			var url = pathname + ((start == -1) ? search : search.substring(0, start)) + (search.length == 0 ? "?date=" : "&date=") + new Date();

			location.href = url;
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
	<div style="background-color: #FFFFFF">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="#">用户管理</a></div>
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
				<tr>
					<td valign="top" background="../../Images/Img1/right_z1.gif">
						&nbsp;
					</td>
					<td valign="top">
						<table width="99%">
							<tr class="txt">
								<td style="width: 50px">
									序号
								</td>
								<td>
									姓名
								</td>
								<td>
									性别
								</td>
								<td>
									登录名
								</td>
								<td>
									密码
								</td>
								<td>
									操作
								</td>
							</tr>
							<asp:Repeater ID="repList" runat="server">
								<ItemTemplate>
									<tr>
										<td style="width: 50px">
											<%#Container.ItemIndex + 1 + ((this.AspNetPager1.CurrentPageIndex-1) * this.AspNetPager1.PageSize)%>
										</td>
										<td>
											<%#((Model.T_SysUser)Container.DataItem).DisplayName %>
										</td>
										<td>
											<%#(Convert.ToBoolean(((Model.T_SysUser)Container.DataItem).Sex)?"男":"女" )%>
										</td>
										<td>
											<%#((Model.T_SysUser)Container.DataItem).UserAccount %>
										</td>
										<td>
											<%#((Model.T_SysUser)Container.DataItem).Pwd %>
										</td>
										<td>
											<a id="btnEdit" onclick="ClickOp(<%#((Model.T_SysUser)Container.DataItem).Id.ToString() %>)">
												<img src="../../Images/Img1/right_xg.png" />
											</a>
											<asp:ImageButton ID="btnDel" OnClientClick="return confirm('确定删除！');" CommandArgument="<%#((Model.T_SysUser)Container.DataItem).Id.ToString() %>" runat="server" ImageUrl="~/Images/Img1/right_sc.png" OnClick="btnDel_Click" />
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
		<iframe id="if" frameborder="0" scrolling="no"></iframe>
	</div>
	</form>
</body>
</html>
