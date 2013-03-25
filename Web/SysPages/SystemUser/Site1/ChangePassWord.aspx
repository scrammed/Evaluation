<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/ChangePassWord.aspx.cs" Inherits="SysPages_ChangePassWord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head id="Head1" runat="server">
		<link href="../../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
		<title>用户信息 - 修改密码</title>
	</head>
	<body>
		<form id="form1" runat="server" style="background-image:url(../../../Images/Img1/right_z.gif)">
		<div class="main">
			<div class="right">
				<div class="right_dh">
					<div class="right_dh_wz">
						<a href="index.aspx" target="_parent">首页</a> &gt;&gt; 用户信息 >> 修改密码</div>
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
										&nbsp;&nbsp;修改信息
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
							<table id="Table1" style="border-collapse: collapse; margin-top:5px; font-size: 12px;" bordercolor="#93bee2"
								cellspacing="0" cellpadding="0" width="50%" align="center" border="1">
								<tr>
									<td align="right" height="30" width="20%">
										登录账号：
									</td>
									<td align="left" style="width: 60%">
										&nbsp;&nbsp;<asp:Label ID="txtUserName" runat="server" Text=""></asp:Label>
									</td>
								</tr>
								<tr>
									<td align="right" height="30" width="20%">
										原密码：
									</td>
									<td align="left" style="width: 60%">
										&nbsp;&nbsp;<asp:TextBox TextMode="Password" MaxLength="20" ID="txtOldPwd"  runat="server" Width="150px"/><span
											style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtOldPwd" runat="server"
												ControlToValidate="txtOldPwd" Display="Dynamic" ErrorMessage="没有填写旧密码"></asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="right" height="30" width="20%">
										新密码：
									</td>
									<td align="left" style="width: 60%">
										&nbsp;
										<asp:TextBox ID="txtNewPwd1" runat="server" Width="150px"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator
											ID="rfvtxtNewPwd1" runat="server" ControlToValidate="txtNewPwd1" Display="Dynamic"
											ErrorMessage="没有填写新密码"></asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="right" height="30" width="20%">
										重复新密码：
									</td>
									<td align="left" style="width: 60%">
										&nbsp;
										<asp:TextBox ID="txtNewPwd2" runat="server" Width="150px"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator
											ID="rfvtxtNewPwd2" runat="server" ControlToValidate="txtNewPwd2" Display="Dynamic"
											ErrorMessage="没有再次输入"></asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="center" width="20%" colspan="2">										   
										<asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" Style="height: 23px;
											width: 50px;" />
										&nbsp;&nbsp; &nbsp;
									</td>
								</tr>
							</table>
							&nbsp;
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
