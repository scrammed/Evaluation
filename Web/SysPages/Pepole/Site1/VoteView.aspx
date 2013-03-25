<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Pepole/VoteView.aspx.cs"
	Inherits="SysPages_Pepole_VoteView" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../../../Images/Img2/Img2/skin.css" rel="stylesheet" type="text/css" />
	<script src="../../../Scripts/jquery-1.9.1.js" type="text/javascript"></script>
	<script src="../../../Scripts/Common.js" type="text/javascript"></script>
	<style type="text/css">
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
        <script type="text/javascript">
        	window.onload = function()
        	{
        		///隔行换色
        		ChangeColor('trname', '#eff3fb', 'white');
        	};
		</script>
</head>
<body>
	<form id="form1" runat="server">
	<div class="main">
		<div class="right">
			<div class="right_dh">
				<div class="right_dh_wz">
					<a href="index.aspx" target="_parent">首页</a> &gt;&gt; 民主评议 &gt;&gt; 投票监督</div>
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
									&nbsp;&nbsp;投票列表
								</td>
								<td align="left" style="font-size: 12px" width="7%"" " height="30">
								</td>
								<td width="75%" align="right" style="font-size: 12px" height="30" valign="middle">
									姓名：
									<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
									手机号码：<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
									代表层面：<asp:DropDownList ID="ddBehalfLevel" runat="server">
									</asp:DropDownList>
									投票情况：<asp:DropDownList ID="ddIsVoted" runat="server">
										<asp:ListItem Text="请选择" Value="-1"></asp:ListItem>
										<asp:ListItem Text="已投票" Value="1"></asp:ListItem>
										<asp:ListItem Text="未投票" Value="0"></asp:ListItem>
									</asp:DropDownList>
									<asp:Button ID="btnSearch" runat="server" Height="23px" Text="搜索" OnClick="btnSearch_Click" />
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
						<table width='100%'>
							<tr valign="top">
								<td>
									<table width="99%">
										<tr style="background-color: #507cd1; height: 25px; color: White; text-align: center">
											<td style="width: 50px">
												序号
											</td>
											<td>
												真实姓名
											</td>
											<td>
												单位
											</td>
											<td>
												职务
											</td>
											<td>
												手机号码
											</td>
											<td>
												办公电话
											</td>
											<td>
												电子邮箱
											</td>
											<td>
												代表层面
											</td>
											<td>
												是否投票
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
														<%#((Model.T_Behalf)Container.DataItem).Department %>
													</td>
													<td>
														<%#((Model.T_Behalf)Container.DataItem).Position %>
													</td>
													<td align="center">
														<%#((Model.T_Behalf)Container.DataItem).Phone %>
													</td>
													<td>
														<%#((Model.T_Behalf)Container.DataItem).Telephone %>
													</td>
													<td>
														<%#((Model.T_Behalf)Container.DataItem).Email %>
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
								</td>
							</tr>
							<tr valign="top" align="center">
								<td>
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
	</form>
</body>
</html>
