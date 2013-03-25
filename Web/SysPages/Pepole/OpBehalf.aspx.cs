using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SiteInfo_OpBehalf : BasePage
{
    int? ID
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
            BindBehalfLevel();
            if (ID !=null)
            {
               BindCtl();
            }
          
        }
    }



    private void BindBehalfLevel()
    {
        int n;
        var typeList = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.代表水平.ToString() }, 0, 0, out n);
        foreach (Model.T_Dictionary dic in typeList)
        {
            this.ddBehalfLevel.Items.Add(new ListItem(dic.DisplayText, dic.Id.ToString()));
        }
    }
    private void BindCtl()
    {
        Model.T_Behalf model = BLL.Behalf.bll.Get(ID);
        this.txtDepartment.Text = model.Department;
        this.ddBehalfLevel.SelectedValue = model.BehalfLevel.ToString();
        this.txtEmail.Text = model.Email;
        this.cbIsThisDept.Checked = model.Isthisdept == true;
        this.txtPhone.Text = model.Phone;
        this.txtPosition.Text=model.Position ;
        this.txtTelephone.Text = model.Telephone;
        this.txtUserName.Text = model.UserName;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Model.T_Behalf model = new Model.T_Behalf();
        model.Department = this.txtDepartment.Text;
        model.BehalfLevel = Convert.ToInt32(this.ddBehalfLevel.SelectedValue);
        model.Email = this.txtEmail.Text;
        model.Isthisdept = this.cbIsThisDept.Checked;
        model.Phone = this.txtPhone.Text;
        model.Position =this.txtPosition.Text;
        model.Telephone = this.txtTelephone.Text;
        model.UserName = this.txtUserName.Text;
        Model.ResultModel rm;

        if (ID == null)
        {           
            rm = BLL.Behalf.bll.Add(model);
        }
        else
        {
            model.Id = (int)ID;
            rm = BLL.Behalf.bll.Update(model);
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