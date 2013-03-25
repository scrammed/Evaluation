using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SystemUser_UserManager : BasePage
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
        var list = BLL.SysUser.bll.GetList(string.Empty, this.AspNetPager1.PageSize, this.AspNetPager1.CurrentPageIndex, out allCount);
        this.repList.DataSource = list;
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

        Model.ResultModel rm = BLL.SysUser.bll.Delete(Convert.ToInt32(id));

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
