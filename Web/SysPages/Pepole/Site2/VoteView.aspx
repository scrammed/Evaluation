<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Pepole/VoteView.aspx.cs" Inherits="SysPages_Pepole_VoteView" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../../../Images/Img2/Img2/skin.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
        .style4
        {
            height: 2px;
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
									投票查询</div>
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
					<br />
					<table width='98%' border='0' align='center' cellpadding='2' cellspacing='1' class='border' id="Table1">
						<tr style="background-color: #eff9fc">
							<td colspan="4">
								&nbsp;&nbsp;
								<asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
								<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
								<asp:Label ID="Label2" runat="server" Text="手机号码"></asp:Label>
								<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
								<asp:Label ID="Label3" runat="server" Text="代表层面"></asp:Label>
								<asp:DropDownList ID="ddBehalfLevel" runat="server">
								</asp:DropDownList>
								<asp:Label ID="Label4" runat="server" Text="投票情况"></asp:Label><asp:DropDownList ID="ddIsVoted" runat="server">
									<asp:ListItem Text="请选择" Value="-1"></asp:ListItem>
									<asp:ListItem Text="已投票" Value="1"></asp:ListItem>
									<asp:ListItem Text="未投票" Value="0"></asp:ListItem>
								</asp:DropDownList>
								<asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" />
							</td>
						</tr>
						<tr>
							<td colspan="4" class="style4">
							</td>
						</tr>
						<tr style="background-color: #CDF0F3;" valign="top">
							<td colspan="4" class="style4">
								<table border="0" cellpadding="0" cellspacing="1" style="width: 100%">
											<asp:Repeater ID="repList" runat="server">
									<HeaderTemplate>
										<tr class='topbg' style="height: 20px" align="center">
												<td style="width: 5%">
													序号
												</td>
												<td style="width: 9%">
													真实姓名
												</td>
												<td style="width: 23%">
													单位
												</td>
												<td style="width: 5%">
													职务
												</td>
												<td style="width: 11%">
													手机号码
												</td>
												<td style="width: 12%">
													办公电话
												</td>
												<td style="width: 12%">
													电子邮箱
												</td>
												<td style="width: 10%">
													代表层面
												</td>
												<td style="width: 13%">
													是否投票
												</td>
											</tr> 
									</HeaderTemplate>
									<ItemTemplate>
									<tr><td style="background-color: #ffffff">
													<%#Container.ItemIndex + 1 + ((this.AspNetPager1.CurrentPageIndex-1) * this.AspNetPager1.PageSize)%>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).UserName %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).Department %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).Position %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).Phone %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).Telephone %>
												</td>
												<td style="background-color: #ffffff">
													<%#((Model.T_Behalf)Container.DataItem).Email %>
												</td>
												<td style="background-color: #ffffff">
													<%#GetBehalfLevelText((int)((Model.T_Behalf)Container.DataItem).BehalfLevel)%>
												</td>
												<td style="background-color: #ffffff">
													<%#(((Model.T_Behalf)Container.DataItem).IsVoted != 1)?"未投票":"已投票" %>
												</td>
											</tr>
									</ItemTemplate>
								</asp:Repeater>
									</table> 
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" PageSize="10" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PrevPageText="上一页">
								</webdiyer:AspNetPager>
								<asp:Label ID="labErr" runat="server"></asp:Label>
							</td>
						</tr>
					</table>
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
	</form>
</body>
</html>
