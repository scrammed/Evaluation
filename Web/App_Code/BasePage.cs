using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///BasePage 的摘要说明
/// </summary>
public class BasePage : System.Web.UI.Page
{
    public BasePage()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Model.T_SysUser user = BLL.Login.bll.GetUser();

        if (user == null)
        {
            Session.Clear();

			WebHelper.ResponseScript(this, "top.location.href='" + Request.ApplicationPath + "/SysPages/login.aspx';");
           // Response.Redirect("~/Syspages/login.aspx",true);
			return;
        }
    }

    public Model.T_SysUser GetSysUser()
    {
        return BLL.Login.bll.GetUser();
    }

}