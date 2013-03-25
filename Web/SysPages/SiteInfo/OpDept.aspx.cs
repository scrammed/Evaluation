using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_OpDept : BasePage
{
    int? Id
    {
        get
        {
            if( string.IsNullOrEmpty(Request["id"]))
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
            if (Id !=null)
            {
               BindCtl();
            }
            BindDeptType();
        }
    }

    private void BindDeptType()
    {
        int n;
        Model.QueryDic qdic = new Model.QueryDic();
        qdic.Type = Model.Enums.DicType.单位类型.ToString();
        var typeList = BLL.Dictionary.bll.GetList(qdic, 0, 0, out n);
        foreach (Model.T_Dictionary dic in typeList)
        {
            this.ddDetpType.Items.Add(new ListItem(dic.DisplayText, dic.Id.ToString()));
        }
    }
    private void BindCtl() 
    {
        int n ;        
        var QueryDept = new Model.QueryDept();
        QueryDept.ID = Id;
        Model.Department model = BLL.Department.bll.GetList(QueryDept, 0, 0, out n).FirstOrDefault();
        this.txtDeptName.Text = model.DeptName;
        this.txtSort.Text = model.Sort.ToString();
        this.ddDetpType.SelectedValue = model.TypeId.ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Model.T_Department model = new Model.T_Department();
        model.DeptName = this.txtDeptName.Text.Trim();
        model.TypeId = Convert.ToInt32(this.ddDetpType.SelectedValue);
        model.Sort = this.txtSort.Text.Trim().Length == 0 ? -1 : Convert.ToInt32(this.txtSort.Text);
        Model.ResultModel rm;

        if (Id == null)
        {           
            rm = BLL.Department.bll.Add(model);
        }
        else
        {
            model.Id = (int)Id;
            rm = BLL.Department.bll.Update(model);
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