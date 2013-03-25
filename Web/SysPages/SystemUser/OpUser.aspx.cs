using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_SystemUser_OpUser : BasePage
{
    int? ID
    {
        get
        {
            if (string.IsNullOrEmpty(Request["id"]))
            {//add
                return null;
            }
            else
            {//edit
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
               BindCtl();
            }
          
        }
    }

    private void BindCtl()
    {
        Model.T_SysUser model = BLL.SysUser.bll.Get(ID);
        this.txtDisplayName.Text = model.DisplayName;
        this.txtUserAccount.Text = model.UserAccount;
        this.txtUserAccount.Enabled = false;
        this.ddSex.SelectedValue = Convert.ToInt32(model.Sex==true).ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Model.T_SysUser model = new Model.T_SysUser();

        model.UserAccount = this.txtUserAccount.Text;
        model.Pwd = this.txtPwd.Text;
        model.DisplayName = this.txtDisplayName.Text;
        model.Sex = this.ddSex.SelectedValue =="1";
        
        Model.ResultModel rm;

        if (ID == null)
        {
            rm = BLL.SysUser.bll.Add(model);
        }
        else
        {
            model.Id = (int)ID;
            rm = BLL.SysUser.bll.Update(model);
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