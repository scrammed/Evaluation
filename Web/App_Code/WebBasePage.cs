using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///BasePage 的摘要说明
/// </summary>
public class WebBasePage : System.Web.UI.Page
{
    public WebBasePage()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Model.T_Behalf user = BLL.Login.bll.GetBehalf();

        if (user == null)
        {
            Session.Clear();
            Response.Redirect("login.aspx", true);
        }
    }

    public Model.T_Behalf GetBehalf()
    {
        return BLL.Login.bll.GetBehalf();
    }
}