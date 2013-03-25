using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
///WebHelper 的摘要说明
/// </summary>
public class WebHelper
{
    public WebHelper()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 输出自定义脚本信息
    /// </summary>
    /// <param name="page">当前页面指针，一般为this</param>
    /// <param name="script">输出脚本</param>
    public static void ResponseScript(System.Web.UI.Page page, string script)
    {
        page.ClientScript.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>" + script + "</script>");

    }

}
