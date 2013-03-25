using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Model; 

namespace DAL
{
    public class SysUser 
    {
        DB_EvaluationEntities db = Model.DB_Evaluation.Get();
        
        /// <summary>
        /// 根据条件获取系统用户列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentIndex">当前页数</param>
        /// <param name="AllCount">所有记录数</param>
        /// <returns>系统用户列表</returns>
        public List<Model.T_SysUser> GetList(string where, int pageSize, int currentIndex, out int AllCount)
        {
            //db.Refresh(System.Data.Objects.RefreshMode.StoreWins, db.T_SysUser);
            var list = (from user in db.T_SysUser where (user.IsDel == null || user.IsDel == false) && (user.IsSuperAdmin == null || user.IsSuperAdmin == false) select user);

            if (pageSize == 0)
            {
                AllCount = 0;
                return list.ToList();
            }
            AllCount = list.Count();
            return list.ToList().Skip((currentIndex - 1) * pageSize).Take(pageSize).ToList();
        }

        /// <summary>
        /// 根据主键ID获取系统用户
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>系统用户</returns>
        public Model.T_SysUser Get(int? Id)
        {
            return (from a in db.T_SysUser where (a.IsDel==null || a.IsDel ==false) && a.Id == Id select a).FirstOrDefault();
        }

        /// <summary>
        /// 根据系统用户账号获取系统用户
        /// </summary>
        /// <param name="username">系统用户账号</param>
        /// <returns>系统用户</returns>
        public Model.T_SysUser Get(string Useraccount)
        {
            return (from a in db.T_SysUser where (a.IsDel == null || a.IsDel == false) && a.UserAccount == Useraccount select a).FirstOrDefault();
        } 
        
        /// <summary>
        /// 添加系统用户
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public bool Add(Model.T_SysUser model)
        {
            db.AddToT_SysUser(model);
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 更新系统用户
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public bool Update(Model.T_SysUser model)
        {
            Model.T_SysUser u = Get(model.Id);
            u.Sex = model.Sex;
            u.DisplayName = model.DisplayName;
			u.Pwd = model.Pwd;
            u.IsDel = model.IsDel;
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 更新密码
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public bool UpdatePwd(Model.T_SysUser model)
        {
            Model.T_SysUser u = Get(model.Id);
            u.Pwd = model.Pwd;
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 删除系统用户
        /// </summary>
        /// <param name="Id">系统用户ID</param>
        /// <returns>是否成功</returns>
        public bool Delete(int Id)
        {
            Model.T_SysUser model = Get(Id);
            model.IsDel = true;
            db.SaveChanges();
            return true;

        }

    }
}