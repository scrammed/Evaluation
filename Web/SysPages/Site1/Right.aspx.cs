using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_Right : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         //   this.liname.Text = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.网站标题.ToString() }).First().Txt;
          //  this.litxt.Text = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.评论须知.ToString() }).First().Txt;
        }
    }
}
