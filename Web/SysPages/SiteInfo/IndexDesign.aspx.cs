using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_IndexDesign : System.Web.UI.Page
{
    bool IsAdd { get { return (bool)ViewState["IsAdd"]; } }

    int idwebname { get { return (int)ViewState["idwebname"]; } }
    int idtxt { get { return (int)ViewState["idtxt"]; } }
    int idyn { get { return (int)ViewState["idyn"]; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            var list = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.网站标题.ToString() });
            
            if (list.Count > 0)
            {
                ViewState["IsAdd"] = false;

                var a = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.网站标题.ToString() }).First();
                this.txtWebName.Text = a.Txt;
                ViewState["idwebname"] = a.Id;
                var b = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.评论须知.ToString() }).First();
                this.txtContent.Text = b.Txt;
                ViewState["idtxt"] = b.Id;
                var c = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.是否开启评议.ToString() }).First();
                string yesorno = c.Txt;
                ViewState["idyn"] = c.Id;
                if (this.rbYes.Text == yesorno)
                {
                    this.rbYes.Checked = true;
                }
                else
                {
                    this.rbNo.Checked = true;
                }
            }
            else
            {
                ViewState["IsAdd"] = true;
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Model.T_Dictionary dicTitle = new Model.T_Dictionary();
        Model.T_Dictionary dicyn = new Model.T_Dictionary();
        Model.T_Dictionary dicTxt = new Model.T_Dictionary();

        dicTitle.DisplayText = Model.Enums.DicType.网站标题.ToString();
        dicTitle.Type = Model.Enums.DicType.网站标题.ToString();
        dicTitle.Txt = this.txtWebName.Text.Trim();

        dicTxt.DisplayText = Model.Enums.DicType.评论须知.ToString();
        dicTxt.Type = Model.Enums.DicType.评论须知.ToString();
        dicTxt.Txt = this.txtContent.Text.Trim();

        dicyn.DisplayText = Model.Enums.DicType.是否开启评议.ToString();
        dicyn.Txt = this.rbNo.Checked?"否":"是";
        dicyn.Type = Model.Enums.DicType.是否开启评议.ToString();

        if (IsAdd)
        {
            BLL.Dictionary.bll.Add(dicTitle);
            BLL.Dictionary.bll.Add(dicyn);
            BLL.Dictionary.bll.Add(dicTxt);
        }
        else
        {
            dicTitle.Id = idwebname;
            dicTxt.Id = idtxt;
            dicyn.Id = idyn;
            BLL.Dictionary.bll.Update(dicTitle);
            BLL.Dictionary.bll.Update(dicyn);
            BLL.Dictionary.bll.Update(dicTxt);

        }

        WebHelper.ResponseScript(this,string.Format("alert('{0}');","操作成功"));
    }
}