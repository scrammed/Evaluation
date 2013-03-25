using System;
using System.Collections.Generic;
using System.Text;
using Model;

namespace BLL
{
    public class SysUser
    {
        static DAL.SysUser dal = new DAL.SysUser();
        public static SysUser bll = new SysUser();

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
            return dal.GetList(where, pageSize, currentIndex, out AllCount);
        }

        /// <summary>
        /// 根据主键ID获取系统用户
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>系统用户</returns>
        public Model.T_SysUser Get(int? Id)
        {
            return dal.Get(Id);
        }

        /// <summary>
        /// 添加系统用户
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public Model.ResultModel Add(Model.T_SysUser user)
        {
            ResultModel rm = new ResultModel();
            var model = dal.Get(user.UserAccount);
            if (model != null)
            {
                rm.Result = false;
                rm.Message = "名称重复";
            }
            else
            {
                if (dal.Add(user))
                {
                    rm.Result = true;
                    rm.Message = "添加成功";
                }
                else
                {
                    rm.Result = false;
                    rm.Message = "添加失败";
                }
            }
            return rm;
        }

        /// <summary>
        /// 更新系统用户
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public Model.ResultModel Update(Model.T_SysUser user)
        {
            ResultModel rm = new ResultModel();

            if (dal.Update(user))
            {
                rm.Result = true;
                rm.Message = "更新成功";
            }
            else
            {
                rm.Result = false;
                rm.Message = "更新失败";
            }
            return rm;
        }

        /// <summary>
        /// 更新系统用户密码
        /// </summary>
        /// <param name="model">系统用户对象</param>
        /// <returns>是否成功</returns>
        public ResultModel UpdatePwd(Model.T_SysUser model)
        {
            ResultModel rm = new ResultModel();

            if (dal.UpdatePwd(model))
            {
                rm.Result = true;
                rm.Message = "密码更新成功";
            }
            else
            {
                rm.Result = false;
                rm.Message = "密码更新失败";
            }
            return rm;
        }

        /// <summary>
        /// 删除系统用户
        /// </summary>
        /// <param name="Id">系统用户ID</param>
        /// <returns>是否成功</returns>
        public Model.ResultModel Delete(int Id)
        {
            ResultModel rm = new ResultModel();

            if (dal.Delete(Id))
            {
                rm.Result = true;
                rm.Message = "删除成功";
            }
            else
            {
                rm.Result = false;
                rm.Message = "删除失败";
            }
            return rm;
        }



    }
}
