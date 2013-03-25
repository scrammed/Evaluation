using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common;
using System.Text.RegularExpressions;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string passWord = txtPassWord.Text;

        Model.T_Behalf user = BLL.Behalf.bll.Get(userName);

        if (user != null && user.Phone == passWord)
        {
            BLL.Login.bll.LoginBehalf(user);
			Response.Redirect("Instructions.aspx");

        }
        else
        {
            Common.MessageBox.Show(this, "用户名或密码错误!");
        }
    }

    
    

}