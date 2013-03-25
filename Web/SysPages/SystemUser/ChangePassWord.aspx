<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/ChangePassWord.aspx.cs" Inherits="SysPages_ChangePassWord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head id="Head1" runat="server"> 
		<title>用户信息 - 修改密码</title>
		<link href="../../Styles/Css1/right.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<form id="form1" runat="server" style="background-image:url(../../Images/Img1/right_z.gif)">
		<div style="background-color: #FFFFFF">
			<div class="right">
				<div class="right_dh">
					<div class="right_dh_wz">
						<a href="#">修改密码</a></div>
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
										&nbsp;</td>
									<td width="7">
										&nbsp;
									</td>
									<td align="left" style="font-size: 12px" width="18%" height="30" valign="middle">
										&nbsp;</td>
									<td align="left" style="font-size: 12px" width="7%"" " height="30">
										&nbsp;
									</td>
									<td width="70%" align="right" style="font-size: 12px" height="30" valign="middle">
										&nbsp;</td>
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
						<table width="380px" class="txt">
							<tr>
								<td  style="width:100px">
									登录名：
								</td>
								<td >
									<asp:Label ID="txtUserName" runat="server" Text=""></asp:Label>
								</td>
							</tr>
							<tr>
								<td >
									旧密码：
								</td>
								<td >
									<asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtOldPwd" runat="server" ControlToValidate="txtOldPwd" Display="Dynamic" ErrorMessage="没有填写旧密码"></asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td >
									新密码：
								</td>
								<td >
									<asp:TextBox ID="txtNewPwd1" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtNewPwd1" runat="server" ControlToValidate="txtNewPwd1" Display="Dynamic" ErrorMessage="没有填写新密码"></asp:RequiredFieldValidator>
								</td>
							</tr>		<tr>
								<td >
									再次输入：
								</td>
								<td >
									<asp:TextBox ID="txtNewPwd2" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtNewPwd2" runat="server" ControlToValidate="txtNewPwd2" Display="Dynamic" ErrorMessage="没有再次输入"></asp:RequiredFieldValidator>
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
							<table  border="0" cellspacing="0" cellpadding="0">
								<tr>
								<td>
									<asp:Button ID="btnSubmit" runat="server"  Text="提交" onclick="btnSubmit_Click" />
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
		<div>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
		</div>
		</form>
	</body>
</html>
