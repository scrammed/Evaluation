<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false" CodeFile="~/SysPages/SiteInfo/IndexDesign.aspx.cs" Inherits="SysPages_SiteInfo_IndexDesign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<link href="../../../Styles/Css2/Admin_STYLE.CSS" rel="stylesheet" type="text/css" />
	<link href="../../../../images/skin.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="../../../Controls/fckeditor/fckeditor.js"></script>
	<script language="javascript" type="text/javascript">
		window.onload = function()
		{
			var sBasePath = "<%=this.Request.ApplicationPath %>/Controls/fckeditor/";
			var oFCKeditor = new FCKeditor('txtContent');
			oFCKeditor.BasePath = sBasePath;

			oFCKeditor.Height = "380px";
			oFCKeditor.Width = "800px";
			oFCKeditor.ReplaceTextarea();
		}
	</script>

	<style type="text/css">
        .txt
        {
        	text-align:left;
        	}
        .style4
        {
            height: 2px;
            text-align: center;
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
            background-image: url(../images/top_bt.jpg);
            background-repeat: no-repeat;
            display: block;
           
            padding-top: 5px;
        }
        .style14
        {
            background-color: #eff9fc;
            width: 100px;
            text-align: right;
        }
        .style15
        {
            color: #FF0000;
            font-size: 10pt;
        }
    </style>
</head>
<body>
	<form id="form2" runat="server">
	<div>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="../images/mail_leftbg.gif">
					<img src="../../../Images/Img2/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="../../../Images/Img2/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt1">
									&nbsp;&nbsp;网站基本设置</div>
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
							<td class="style14">
								网站名称：
							</td>
							<td class="baise">
								<asp:TextBox ID="txtWebName" runat="server" Width="384px" CssClass="txt"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style14">
								网址：
							</td>
							<td class="baise">
								<asp:TextBox ID="txt_url" runat="server" Width="384px" CssClass="txt"></asp:TextBox>
								<span class="style15">（http://www.baidu.com）</span>
							</td>
						</tr>
						<tr>
							<td class="style14">
								是否开启评议：
							</td>
							<td class="baise">
								<asp:RadioButton ID="rbYes" runat="server" GroupName="py" Text="是" />
								<asp:RadioButton ID="rbNo" runat="server" GroupName="py" Text="否" />
							</td>
						</tr>
						<tr>
							<td class="style14" style="vertical-align: top">
								评议须知：
							</td>
							<td class="baise">
								<asp:TextBox TextMode="MultiLine" name="txtContent" ID="txtContent" runat="server" Rows="10" cols="80" Style="width: 100%; height: 300px" />
							</td>
						</tr>
						<tr>
							<td colspan="2" class="style4">
							</td>
						</tr>
						<tr>
							<td colspan="2" class="style4">
								<asp:Button ID="btnSave" runat="server" Text="保  存" OnClick="btnSave_Click" />
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
	</form>
</body>
</html>
