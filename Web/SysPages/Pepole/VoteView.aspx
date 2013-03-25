<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VoteView.aspx.cs" Inherits="SysPages_Pepole_VoteView" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	<title>民主评议 - 投票监督</title>
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

</head>
<body>
	<form id="form1" runat="server">
	<div style="background-color: #FFFFFF">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="#">投票监督</a></div>
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
									&nbsp;
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
						<table>
							<tr>
								<td>
									姓名
								</td>
								<td>
									<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
								</td>
								<td>
									手机号
								</td>
								<td>
									<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
								</td>
								<td>
									代表层面
								</td>
								<td>
									<asp:DropDownList ID="ddBehalfLevel" runat="server">
									</asp:DropDownList>
								</td>
								<td>
									投票情况
								</td>
								<td>
									<asp:DropDownList ID="ddIsVoted" runat="server">
										<asp:ListItem Text="请选择" Value="-1"></asp:ListItem>
										<asp:ListItem Text="已投票" Value="1"></asp:ListItem>
										<asp:ListItem Text="未投票" Value="0"></asp:ListItem>
									</asp:DropDownList>
								</td>
								<td>
									<asp:Button ID="btnSearch" runat="server" Text="查找" onclick="btnSearch_Click" />
								</td>
							</tr>
							<tr>
								<td colspan="9">
									&nbsp;
								</td>
							</tr>
							<tr class="txt">
								<td colspan="9">
									<table width="99%">
										<tr>
											<td style="width: 50px">
												序号
											</td>
											<td>
												姓名
											</td>
											<td>
												手机号
											</td>
											<td>
												代表层面
											</td>
											<td>
												投票情况
											</td>
										</tr>
							<asp:Repeater ID="repList" runat="server">
								<ItemTemplate>
									<tr>
										<td>
											<%#Container.ItemIndex + 1 + ((this.AspNetPager1.CurrentPageIndex-1) * this.AspNetPager1.PageSize)%>
										</td>
										<td>
											<%#((Model.T_Behalf)Container.DataItem).UserName %>
										</td>
										<td>
											<%#((Model.T_Behalf)Container.DataItem).Phone %>
										</td>
										<td>
											<%#GetBehalfLevelText((int)((Model.T_Behalf)Container.DataItem).BehalfLevel)%>
										</td>
										<td>
											<%#(((Model.T_Behalf)Container.DataItem).IsVoted != 1)?"未投票":"已投票" %>
										</td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						</table>
						<webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" PageSize="10" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PrevPageText="上一页">
						</webdiyer:AspNetPager>
						</td>
						</tr>
						</table>
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
	</form>
</body>
</html>
