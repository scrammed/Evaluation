using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_ChangePassWord : BasePage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Model.T_SysUser user = BLL.Login.bll.GetUser();
            this.txtUserName.Text = user.UserAccount;
        }
    }
    /// <summary>
    /// 更改密码
    /// </summary>
    private void ChangePwd()
    {
        string oldPwd = this.txtOldPwd.Text;
        Model.T_SysUser user = BLL.Login.bll.GetUser();
        if (!string.Equals(user.Pwd, oldPwd))
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", "与原有密码不匹配"));
            return;
        }

        string newPwd1 = this.txtNewPwd1.Text;
        string newPwd2 = this.txtNewPwd2.Text;
        if (!string.Equals(newPwd1, newPwd2))
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", "两次新密码不匹配"));
            return;
        }
        Model.T_SysUser u = new Model.T_SysUser();
        u.Id = user.Id;
        u.UserAccount = user.UserAccount;
        u.Pwd = this.txtNewPwd1.Text;
        Model.ResultModel rm = BLL.SysUser.bll.UpdatePwd(u);
        BLL.Login.bll.LoginUser(u);
        WebHelper.ResponseScript(this, string.Format("alert('{0}');", rm.Message));       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ChangePwd();
    }
}