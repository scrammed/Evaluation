using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common;

public partial class SysPages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string passWord = txtPassWord.Text;
        
        Model.T_SysUser user = BLL.Login.bll.Get(userName);

        if (user != null && user.Pwd == passWord)
        {
            BLL.Login.bll.LoginUser(user);
            Response.Redirect("~/SysPages/Index.aspx");

        }
        else
        {
            Common.MessageBox.Show(this, "用户名或密码错误!");
        }
    }
}