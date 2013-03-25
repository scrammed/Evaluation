using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using Common;

namespace BLL
{
    public class Login
    {
        private readonly DAL.SysUser dal = new DAL.SysUser();
        public static Login bll = new Login();

      
        /// <summary>
        /// 获取当前登录系统用户
        /// </summary>
        /// <returns></returns>
        public Model.T_SysUser GetUser()
        {
            if (HttpContext.Current.Session["Account"] == null)
            {
                return null;
            }
            Model.T_SysUser u = new Model.T_SysUser()
            {
                DisplayName = HttpContext.Current.Session["UserName"] as string,
                UserAccount = HttpContext.Current.Session["Account"] as string,
                Pwd = HttpContext.Current.Session["Pwd"] as string,
                Id = Convert.ToInt32(HttpContext.Current.Session["ID"]),
                IsSuperAdmin =Convert.ToBoolean( HttpContext.Current.Session["IsSuperAdmin"] )
            };
            return u;
        }

        /// <summary>
        /// 登记系统用户
        /// </summary>
        /// <param name="user"></param>
        public void LoginUser(Model.T_SysUser user)
        {
            HttpContext.Current.Session["UserName"] = user.DisplayName;
            HttpContext.Current.Session["Account"] = user.UserAccount;
            HttpContext.Current.Session["Pwd"] = user.Pwd;
            HttpContext.Current.Session["ID"] = user.Id;
            HttpContext.Current.Session["IsSuperAdmin"] = user.IsSuperAdmin;
        }

        /// <summary>
        /// 登记代表
        /// </summary>
        /// <param name="user"></param>
        public void LoginBehalf(Model.T_Behalf user) 
        {
            HttpContext.Current.Session["UserName"] = user.UserName;
            HttpContext.Current.Session["Phone"] = user.Phone;
            HttpContext.Current.Session["Id"] = user.Id;
            HttpContext.Current.Session["IsVoted"] = user.IsVoted;
        }

        /// <summary>
        /// 获取当前登录代表
        /// </summary>
        /// <returns></returns>
        public Model.T_Behalf GetBehalf()
        {
            if (HttpContext.Current.Session["Phone"] == null)
            {
                return null;
            }
            Model.T_Behalf u = new Model.T_Behalf()
            {
                UserName = HttpContext.Current.Session["UserName"] as string,
                Phone = HttpContext.Current.Session["Phone"] as string,
                Id = Convert.ToInt32(HttpContext.Current.Session["Id"]),
                IsVoted = Convert.ToInt32(HttpContext.Current.Session["IsVoted"])
            };
            return u;
        }

        /// <summary>
        /// 根据名称获取系统用户
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public Model.T_SysUser Get(string name)
        {
            try
            {
                return dal.Get(name);
            }
            catch (Exception ex)
            {
                Log.LogInfo(string.Format("调用BLL.Login.Get({0})时发生 ", name), ex);
                throw ex;
            }
        }
    }
}