using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Behalf
    {
        static DAL.Behalf dal = new DAL.Behalf();
        public static Behalf bll = new Behalf();

        /// <summary>
        /// 根据条件获取代表列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentIndex">当前页数</param>
        /// <param name="AllCount">所有记录数</param>
        /// <returns>代表列表</returns>
        public List<Model.T_Behalf> GetList(QueryBehalf query, int pageSize, int currentIndex, out int AllCount)
        {
            return dal.GetList(query, pageSize, currentIndex, out AllCount);
        }

        /// <summary>
        /// 根据条件获取代表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <returns>代表</returns>
        public Model.T_Behalf Get(object obj)
        {
            if (obj is int)
            {
                return dal.Get((int)obj);
            }

            if (obj is string)
            {
                return dal.Get(obj.ToString());
            }
            return null;

        }

        /// <summary>
        /// 添加代表
        /// </summary>
        /// <param name="behalf">代表对象</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Add(Model.T_Behalf behalf)
        {
            ResultModel rm = new ResultModel();
            Model.QueryBehalf qb = new QueryBehalf()
            {
                Phone = behalf.Phone
            };

            var list = dal.Get(qb);
            if (list.Count > 0)
            {
                rm.Result = false;
                rm.Message = "代表手机号不能重复";
            }
            else
            {
                if (dal.Add(behalf))
                {
                    rm.Result = true;
                    rm.Message = "代表添加成功";
                }
                else
                {
                    rm.Result = false;
                    rm.Message = "代表添加失败";
                }
            }
            return rm;

        }

        /// <summary>
        /// 更新代表
        /// </summary>
        /// <param name="model">代表对象</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Update(Model.T_Behalf dept)
        {
            ResultModel rm = new ResultModel();
            Model.QueryBehalf qb = new QueryBehalf()
            {
                TelePhone = dept.Telephone
            };

            var list = dal.Get(qb);
            if (list.Count > 0 && !list.Exists(l => l.Id != dept.Id))
            {
                rm.Result = false;
                rm.Message = "代表手机号不能重复";
            }
            else
            {

                if (dal.Update(dept))
                {
                    rm.Result = true;
                    rm.Message = "代表更新成功";
                }
                else
                {
                    rm.Result = false;
                    rm.Message = "代表更新失败";
                }
            }
            return rm;
        }

        /// <summary>
        /// 删除代表
        /// </summary>
        /// <param name="Id">代表ID</param>
        /// <returns>结果对象</returns>
        public Model.ResultModel Delete(int Id)
        {
            ResultModel rm = new ResultModel();
            if (dal.Delete(Id))
            {
                rm.Result = true;
                rm.Message = "代表删除成功";
            }
            else
            {
                rm.Result = false;
                rm.Message = "代表删除失败";
            }
            return rm;
        }


    }
}
