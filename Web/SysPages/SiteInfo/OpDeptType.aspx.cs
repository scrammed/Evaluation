using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_OpDeptType : BasePage
{
    int? ID
    {
        get
        {
            if (string.IsNullOrEmpty(Request["id"]))
            {
                return null;
            }
            else
            {
                return Convert.ToInt32(Request["id"]);
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (ID !=null)
            {

                this.txtTypeName.Text = BLL.Dictionary.bll.Get((int)ID).DisplayText;
            }
        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Model.T_Dictionary model = new Model.T_Dictionary();
        model.DisplayText = this.txtTypeName.Text;
        Model.ResultModel rm;
		model.Type = Model.Enums.DicType.单位类型.ToString();
        if (ID == null)
        {
         
            rm = BLL.Dictionary.bll.Add(model);         

        }
        else
        {
            model.Id = (int)ID;
            rm = BLL.Dictionary.bll.Update(model);
        }

        if (rm.Result)
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');parent.Close();parent.Refrash();", rm.Message));
        }
        else
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", rm.Message));
        }
    }
}