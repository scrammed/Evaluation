<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="SysPages_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>�ޱ����ĵ�</title>
	
	<link href="../Styles/Css1/left.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" language="javascript">
        if (top.location == self.location) 
        { 
            //top.location='Default.aspx';
        } 
	</script>

</head>
<body>
	<form id="form1" runat="server">
	<asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="up1" runat="server">
	<ContentTemplate>
	<div class="left">
		<div class="left_glcd">
			<img src="../Images/Img1/cdgl.png" width="200" height="59" alt="" /></div>
		<asp:TreeView ID="TreeView1" runat="server" NodeIndent="1" ShowExpandCollapse="False" Width="170px" OnTreeNodeExpanded="TreeView1_TreeNodeExpanded">
			<Nodes>
				<asp:TreeNode SelectAction="SelectExpand" Text="&lt;div class=&quot;left_jbxx&quot;&gt;&lt;span id=&quot;jbxx_1&quot;&gt;�û���Ϣ&lt;/span&gt;&lt;span id=&quot;left_tb&quot;&gt;&lt;img src=&quot;../Images/Img1/left_jt.png&quot; style=&quot;border:0&quot; /&gt;&lt;/span&gt;&lt;/div&gt;" Value="�û���Ϣ">
					<asp:TreeNode NavigateUrl="~/SysPages/SystemUser/Site1/ChangePassWord.aspx" Target="right" Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;�����޸� &lt;/div&gt;" Value="�����޸�"></asp:TreeNode>
					<asp:TreeNode NavigateUrl="~/SysPages/SystemUser/Site1/UserManager.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;�û����� &lt;/div&gt;"
						Value="�û�����"></asp:TreeNode>
				</asp:TreeNode>
				<asp:TreeNode SelectAction="SelectExpand" Text="&lt;div class=&quot;left_jbxx&quot;&gt;&lt;span id=&quot;jbxx_1&quot;&gt;��վ��Ϣ&lt;/span&gt;&lt;span id=&quot;left_tb&quot;&gt;&lt;img src=&quot;../Images/Img1/left_jt.png&quot; style=&quot;border:0&quot; /&gt;&lt;/span&gt;&lt;/div&gt;" Value="��վ��Ϣ">
					<asp:TreeNode NavigateUrl="~/SysPages/SiteInfo/Site1/DeptTypeManager.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;��λ���͹���&lt;/div&gt;"
						Value="��λ���͹���"></asp:TreeNode>
					<asp:TreeNode NavigateUrl="~/SysPages/SiteInfo/Site1/DeptManager.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;���鵥λ����&lt;/div&gt;"
						Value="���鵥λ����"></asp:TreeNode>
					<asp:TreeNode NavigateUrl="~/SysPages/SiteInfo/Site1/IndexDesign.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;��ҳ���&lt;/div&gt;"
						Value="��ҳ���"></asp:TreeNode>
				</asp:TreeNode>
        	
				<asp:TreeNode SelectAction="SelectExpand" Text="&lt;div class=&quot;left_jbxx&quot;&gt;&lt;span id=&quot;jbxx_1&quot;&gt;��������&lt;/span&gt;&lt;span id=&quot;left_tb&quot;&gt;&lt;img src=&quot;../Images/Img1/left_jt.png&quot; style=&quot;border:0&quot; /&gt;&lt;/span&gt;&lt;/div&gt;" Value="��������">
					<asp:TreeNode NavigateUrl="~/SysPages/Pepole/Site1/BehalfManager.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;����������&lt;/div&gt;"
						Value="����������"></asp:TreeNode>
					<asp:TreeNode NavigateUrl="~/SysPages/Pepole/Site1/VoteView.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;ͶƱ�ල&lt;/div&gt;"
						Value="ͶƱ�ල"></asp:TreeNode>
					<asp:TreeNode NavigateUrl="~/SysPages/Pepole/Site1/SorceCount.aspx" Target="right"
						Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;����ͳ��&lt;/div&gt;"
						Value="����ͳ��"></asp:TreeNode>
				</asp:TreeNode>
				<asp:TreeNode SelectAction="SelectExpand" Text="&lt;div class=&quot;left_jbxx&quot;&gt;&lt;span id=&quot;jbxx_1&quot;&gt;ϵͳ�˳�&lt;/span&gt;&lt;span id=&quot;left_tb&quot;&gt;&lt;img src=&quot;../Images/Img1/left_jt.png&quot; style=&quot;border:0&quot; /&gt;&lt;/span&gt;&lt;/div&gt;" Value="ϵͳ�˳�">
					<asp:TreeNode NavigateUrl="Quit.aspx" Target="right" Text="&lt;div class=&quot;left_sygg_1&quot;&gt;&lt;img src=&quot;../Images/Img1/left_d.png&quot; style=&quot;border:0&quot;  width=&quot;8&quot; height=&quot;7&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;ϵͳ�˳�&lt;/div&gt;" Value="ϵͳ�˳�"></asp:TreeNode>
				</asp:TreeNode>
			</Nodes>
		</asp:TreeView>
	</div>
	</ContentTemplate>
	</asp:UpdatePanel>
	</form>
</body>
</html>
