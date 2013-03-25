using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Department
    {
        private  static DAL.Department dal = new DAL.Department();
        public static Department bll = new Department();

        /// <summary>
        /// 根据条件获取部门列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentIndex">当前页数</param>
        /// <param name="AllCount">所有记录数</param>
        /// <returns>部门列表</returns>
        public List<Model.Department> GetList(QueryDept query, int pageSize, int currentIndex, out int AllCount)
        {
            return dal.GetList(query, pageSize, currentIndex, out AllCount);
        }

        /// <summary>
        /// 根据主键ID获取部门
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>部门</returns>
        public Model.T_Department Get(int Id)
        {

            return dal.Get(Id);

        }

        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="model">部门对象</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Add(Model.T_Department dept)
        {
            ResultModel rm = new ResultModel();
            Model.QueryDept qd = new QueryDept()
            {
                DeptName = dept.DeptName
            };
            var list = dal.Get(qd);

            if (list.Count > 0)
            {
                rm.Result = false;
                rm.Message = "部门名称重复";
            }
            else
            {
                if (dal.Add(dept))
                {
                    rm.Result = true;
                    rm.Message = "部门添加成功";
                }
                else
                {
                    rm.Result = false;
                    rm.Message = "部门添加失败";
                }
            }
            return rm;
        }
        
        /// <summary>
        /// 更新部门
        /// </summary>
        /// <param name="model">部门对象</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Update(Model.T_Department dept)
        {
            ResultModel rm = new ResultModel();

            Model.QueryDept qd = new QueryDept()
            {
                DeptName = dept.DeptName
            };
            var list = dal.Get(qd);

            if (list.Count > 0 && !list.Exists(l => l.Id == dept.Id))
            {
                rm.Result = false;
                rm.Message = "部门名称重复";
            }
            else
            {
                if (dal.Update(dept))
                {
                    rm.Result = true;
                    rm.Message = "部门更新成功";
                }
                else
                {
                    rm.Result = false;
                    rm.Message = "部门更新失败";
                }
            }
            return rm;
        }

        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="Id">部门ID</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Delete(int Id)
        {
            ResultModel rm = new ResultModel();
            if (dal.Delete(Id))
            {
                rm.Result = true;
                rm.Message = "部门删除成功";
            }
            else
            {
                rm.Result = false;
                rm.Message = "部门删除失败";
            }
            return rm;
        }
  
    }
}
