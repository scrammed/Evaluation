using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_DeptManager : BasePage
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
        Model.QueryDept query = new Model.QueryDept();
        this.repList.DataSource = BLL.Department.bll.GetList(query, this.AspNetPager1.PageSize, this.AspNetPager1.CurrentPageIndex, out allCount);
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

        Model.ResultModel rm = BLL.Department.bll.Delete(Convert.ToInt32(id));

        if (rm.Result)
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');Refrash();", rm.Message));
        }
        else
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", rm.Message));
        }
    }
}
