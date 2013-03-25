using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_DeptTypeManager : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindrepList();
        }
    }

    void BindrepList()
    {
        int allCount;
        this.repList.DataSource = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.单位类型.ToString() }, this.AspNetPager1.PageSize, this.AspNetPager1.CurrentPageIndex, out allCount);
        this.repList.DataBind();

        this.AspNetPager1.RecordCount = allCount;
    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        BindrepList();
    }
    protected void btnDel_Click(object sender, ImageClickEventArgs e)
    {
        var id = ((sender) as ImageButton).CommandArgument;

        Model.ResultModel rm = BLL.Dictionary.bll.Delete(Convert.ToInt32(id));

        if (rm.Result)
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');Refrash();", rm.Message));
        }
        else
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", rm.Message));
        }
    }
    protected void btnUp_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        int oldShort = Convert.ToInt32(btn.CommandArgument);
        int newShort = oldShort-1;
        if (newShort <= 0)
        {
            WebHelper.ResponseScript(this, string.Format("alert('已经是第一位了');"));
            return;
        }
        BLL.Dictionary.bll.Short(oldShort, newShort);
        BindrepList();
    }
    protected void btnDown_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        int oldShort = Convert.ToInt32(btn.CommandArgument);
        int newShort = oldShort+1;
        if (newShort > this.repList.Items.Count)
        {
            WebHelper.ResponseScript(this, string.Format("alert('已经是最后一位了');"));
            return;
        }
        BLL.Dictionary.bll.Short(oldShort, newShort);
        BindrepList();
    }
}
