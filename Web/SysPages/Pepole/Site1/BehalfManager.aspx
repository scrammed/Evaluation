<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Pepole/BehalfManager.aspx.cs"
	Inherits="SysPages_Pepole_BehalfManager" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
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
      
        </style>

	<script type="text/javascript" defer="defer">
		window.onload = function()
		{
			///初始化弹出层
			$(function()
			{
				var w = 1;
				var h = 1;
				var ie = GetIE();
				if (ie == IEType.Ie7)
				{
					w = 450;
					h = 290;
				}

				if (ie == IEType.Ie8)
				{
					w = 460;
					h = 300;
				}

				if (ie == IEType.Safari)
				{
					w = 460;
					h = 300;
				}

				$("#dialog").dialog(
                    {
                    	width: w,
                    	height: h,
                    	position: "center",
                    	modal: true,
                    	autoOpen: false,
                    	show: "blind",
                    	hide: "blind",
                    	create: function(event, ui)
                    	{

                    	}

                    });
			});
			///隔行换色
			ChangeColor('trname', '#eff3fb', 'white');

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
			var url = "OpBehalf.aspx?1=1";
			if (id)
			{
				url += "&id=";
				url += id;
			}

			url += "&date=";
			url += new Date;
			var iframe = $("#if");
			iframe.attr("src", url);
			iframe.attr("width", 450);
			iframe.attr("height", 260);
			$("#dialog").dialog("open");

		}

		function Refrash()
		{
			var pathname = "../Site1/BehalfManager.aspx";
			var search = document.location.search
			var start = search.indexOf("&date=");
			var url = pathname + ((start == -1) ? search : search.substring(0, start)) + (search.length == 0 ? "?date=" : "&date=") + new Date();

			location.href = url;
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
	<div class="main">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="index.aspx" target="_parent">首页</a> &gt;&gt; 民主评议 &gt;&gt; 评议代表管理</div>
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
									&nbsp;&nbsp;代表列表&nbsp;
								</td>
								<td align="left" style="font-size: 12px" width="7%"" " height="30">
								</td>
								<td width="75%" align="right" style="font-size: 12px" height="30" valign="middle">
									<input type="button" onclick="ClickOp()"  value="添加"/></td>
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
						<table width="100%">
							<tr>
								<td>
									<table width="99%">
										<tr style="background-color: #507cd1; height: 25px; color: White; text-align: center">
											<td style="width: 50px">
												序号
											</td>
											<td>
												代表姓名
											</td>
											<td>
												代表水平
											</td>
											<td>
												电话
											</td>
											<td>
												操作
											</td>
										</tr>
										<asp:Repeater ID="repList" runat="server">
											<ItemTemplate>
												<tr name="trname" style="height: 25px; font-size: 12px; text-align: center">
													<td>
														<%#Container.ItemIndex + 1 + ((this.AspNetPager1.CurrentPageIndex-1) * this.AspNetPager1.PageSize)%>
													</td>
													<td>
														<%#((Model.T_Behalf)Container.DataItem).UserName %>
													</td>
													<td>
														<%#GetBehalfLevelText((int)((Model.T_Behalf)Container.DataItem).BehalfLevel)%>
													</td>
													<td>
														<%#((Model.T_Behalf)Container.DataItem).Telephone %>
													</td>
													<td align="center">
														<img src="../../../Images/Img1/right_xg.png" onclick="ClickOp(<%#((Model.T_Behalf)Container.DataItem).Id.ToString() %>)" />
														<asp:ImageButton ID="btnDel" Style="position: fixed" OnClientClick="return confirm('确定删除！');"
															CommandArgument="<%#((Model.T_Behalf)Container.DataItem).Id.ToString() %>" runat="server"
															ImageUrl="~/Images/Img1/right_sc.png" OnClick="btnDel_Click" />
													</td>
												</tr>
											</ItemTemplate>
										</asp:Repeater>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center">
									<webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" PageSize="10"
										FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged"
										PrevPageText="上一页">
									</webdiyer:AspNetPager>
									<asp:Label ID="labErr" runat="server"></asp:Label>
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
	<div id="dialog" style="display: none; overflow: hidden">
		<iframe id="if" frameborder="0" scrolling="no"></iframe>
	</div>
	</form>
</body>
</html>
