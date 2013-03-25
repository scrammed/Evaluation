using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class BehalfVote : WebBasePage
{
	List<ListItem> liList = new List<ListItem>() {
        new ListItem() { Text = "好", Value = "100" } ,     
        new ListItem() { Text = "较好", Value = "75" } ,     
        new ListItem() { Text = "一般", Value = "50" } ,     
        new ListItem() { Text = "差", Value = "25" } 
    };
	protected void Page_Load(object sender, EventArgs e)
	{

		if (!IsPostBack)
		{
			var dic = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.评论须知.ToString() });
			if (dic.Count() > 0)
			{
				liInstructions.Text = dic[0].Txt;
			}
		}
	}
	protected void btnSubmit_Click(object sender, EventArgs e)
	{
		Response.Redirect("BehalfVote.aspx");
	}
}