<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/SysPages/SystemUser/ChangePassWord.aspx.cs" Inherits="SysPages_ChangePassWord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
	<style type="text/css">

        .style9
        {
            width: 15%;
        }
        .style12
        {
            width: 85%;
        }
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
									密码修改</div>
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
					<table style="background-color: #CDF0F3; width: 100%">
						<tr>
							<td class="style9 tou" align="right">
								登陆名：&nbsp;
							</td>
							<td class="style12 baise" align="left">
								<asp:Label ID="txtUserName" runat="server" Text=""></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style9 tou" align="right">
								旧密码：&nbsp;
							</td>
							<td class="style12 baise" align="left">
							
								<asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtOldPwd" runat="server" ControlToValidate="txtOldPwd" Display="Dynamic" ErrorMessage="没有填写旧密码"></asp:RequiredFieldValidator>	</td>
						</tr>
						<tr>
							<td class="style9 tou" align="right">
								新密码：&nbsp;
							</td>
							<td class="style12 baise" align="left">
								<asp:TextBox ID="txtNewPwd1" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtNewPwd1" runat="server" ControlToValidate="txtNewPwd1" Display="Dynamic" ErrorMessage="没有填写新密码"></asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="style9 tou" align="right">
								确认新密码：&nbsp;
							</td>
							<td class="style12 baise" align="left">
								<asp:TextBox ID="txtNewPwd2" runat="server"></asp:TextBox><span style="color: #FF0000">*</span><asp:RequiredFieldValidator ID="rfvtxtNewPwd2" runat="server" ControlToValidate="txtNewPwd2" Display="Dynamic" ErrorMessage="没有再次输入"></asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="tou" colspan="2">
								&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style9" align="right">
								&nbsp;
							</td>
							<td class="style12" align="left">
								<asp:Button ID="btnSubmit" runat="server" Text="确认提交" OnClick="btnSubmit_Click" />
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
	<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="当前操作错误：" ShowMessageBox="false" ShowSummary="False" />
	</form>
</body>
</html>
