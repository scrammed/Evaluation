<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/Right.aspx.cs" Inherits="SysPages_Right" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
</style>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="../../Images/Img2/mail_leftbg.gif">
					<img src="../../Images/Img2/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="../../Images/Img2/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt">
									首页</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="../../Images/Img2/mail_rightbg.gif">
					<img src="../../Images/Img2/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>
			<tr>
				<td valign="middle" background="../../Images/Img2/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="2" valign="top">
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
							<td valign="top">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top">
								<span class="left_bt" id="ganxie" runat="server">感谢您使用 </span>
								<br>
								<br>
								<span class="left_txt">&nbsp;<img src="../../Images/Img2/ts.gif" width="16" height="16">
								<asp:Literal ID="liname" runat="server"></asp:Literal>
								</span>
							</td>
							<td width="7%">
								&nbsp;
							</td>
							<td width="40%" valign="top">
								<table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
									<tr>
										<td width="7%" height="27" background="images/news-title-bg.gif">
											<img src="../../Images/Img2/news-title-bg.gif" width="2" height="27">
										</td>
										<td width="93%" background="../Images/Img2/news-title-bg.gif" class="left_bt2">
											最新动态
										</td>
									</tr>
									<tr>
										<td height="102" valign="top">
											&nbsp;
										</td>
										<td height="102" valign="top" class="left_txt">
											暂无
										</td>
									</tr>
									<tr>
										<td height="5" colspan="2">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top">
								<!--JavaScript部分-->

								<script language="javascript">
									function secBoard(n)
									{
										for (i = 0; i < secTable.cells.length; i++)
											secTable.cells[i].className = "sec1";
										secTable.cells[n].className = "sec2";
										for (i = 0; i < mainTable.tBodies.length; i++)
											mainTable.tBodies[i].style.display = "none";
										mainTable.tBodies[n].style.display = "block";
									}
								</script>

								<!--HTML部分-->
								<table width="60%" border="0" cellpadding="0" cellspacing="0" id="secTable">
									<tbody>
										<tr align="middle" height="20">
											<td align="center" class="sec2" onclick="secBoard(0)">
												系统参数
											</td>
											<td align="center" class="sec1" onclick="secBoard(1)">
												版权说明
											</td>
										</tr>
									</tbody>
								</table>
								<table class="main_tab" id="mainTable" cellspacing="0" cellpadding="0" width="100%" border="0">
									<!--关于TBODY标记-->
									<!--关于cells集合-->
									<!--关于tBodies集合-->
									<tbody style="display: block">
										<tr>
											<td valign="top" align="middle">
												<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td colspan="3">
															</td>
														</tr>
														<tr>
															<td height="5" colspan="3">
															</td>
														</tr>
														<tr>
															<td width="4%" height="25" background="images/news-title-bg.gif">
															</td>
															<td height="25" colspan="2" background="images/news-title-bg.gif" class="left_txt" align="left">
																<span class="TableRow2">&nbsp;服务器IP：<%= Context.Request.UserHostAddress%></span>
															</td>
														</tr>
														<tr>
															<td height="25" bgcolor="#FAFBFC">
																&nbsp;
															</td>
															<td height="25" bgcolor="#FAFBFC" colspan="2" align="left">
																<span class="left_txt">&nbsp;系统版本：v1.0</span>
															</td>
														</tr>
														<tr>
															<td height="25" bgcolor="#FAFBFC">
																&nbsp;
															</td>
															<td height="25" bgcolor="#FAFBFC" colspan="2" align="left">
																<span class="left_txt">&nbsp;操作系统类型：<%=Context.Request.ServerVariables["HTTP_USER_AGENT"]%></span>
															</td>
														</tr>
														<tr>
															<td height="25" bgcolor="#FAFBFC">
																&nbsp;
															</td>
															<td height="25" bgcolor="#FAFBFC" colspan="2" align="left">
																<span class="left_txt">&nbsp;浏览器类型：<%= HttpContext.Current.Request.Browser.Type%></span>
															</td>
														</tr>
														<tr>
															<td height="25" bgcolor="#FAFBFC">
																&nbsp;
															</td>
															<td height="25" bgcolor="#FAFBFC" colspan="2" align="left">
																&nbsp;<span class="left_txt">数据库使用：</span><span class="left_ts"><img src="../../Images/Img2/g.gif" width="12" height="13"><b style="color: blue"> MS SQL </b></span>
															</td>
														</tr>
														<tr>
															<td height="5" colspan="3">
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
									<!--关于display属性-->
									<tbody style="display: none">
										<tr>
											<td valign="top" align="middle">
												<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td colspan="3">
															</td>
														</tr>
														<tr>
															<td height="5" colspan="3">
															</td>
														</tr>
														<tr>
															<td bgcolor="#FAFBFC">
																&nbsp;
															</td>
															<td bgcolor="#FAFBFC" class="left_txt" align="left">
																<span class="left_ts">暂无
															</td>
															<td bgcolor="#FAFBFC" class="left_txt">
																&nbsp;
															</td>
														</tr>
														<tr>
															<td height="5" colspan="3">
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<td>
								&nbsp;
							</td>
							<td valign="top">
								<table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
									<tr>
										<td width="7%" height="27" background="images/news-title-bg.gif">
											<img src="images/news-title-bg.gif" width="2" height="27">
										</td>
										<td width="93%" background="images/news-title-bg.gif" class="left_bt2">
											关于民主评议
										</td>
									</tr>
									<tr>
										<td height="102" valign="top">
											&nbsp;
										</td>
										<td height="102" valign="top">
											<label>
											</label>
											<div class="left_txt" style="height: 170px; overflow: auto" id="xuzhi" runat="server">
												<asp:Literal ID="litxt" runat="server"></asp:Literal>
												</div>
											</label>
										</td>
									</tr>
									<tr>
										<td height="5" colspan="2">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="40" colspan="4">
								<table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
									<tr>
										<td>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="2%">
								&nbsp;
							</td>
							<td width="51%" class="left_txt">
								<img src="../../Images/Img2/icon-phone.gif" width="17" height="14">
								技术支持：沈阳民心科技工程有限公司
							</td>
							<td>
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td background="../../Images/Img2/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td valign="bottom" background="../../Images/Img2/mail_leftbg.gif">
					<img src="../../Images/Img2/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="../../Images/Img2/buttom_bgs.gif">
					<img src="../../Images/Img2/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="../../Images/Img2/mail_rightbg.gif">
					<img src="../../Images/Img2/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>
