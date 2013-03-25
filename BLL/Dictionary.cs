using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Dictionary
    {
        public static Dictionary bll = new Dictionary();
        static DAL.Dictionary dal = new DAL.Dictionary();

        /// <summary>
        /// 根据条件获取字典列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentIndex">当前页数</param>
        /// <param name="AllCount">所有记录数</param>
        /// <returns>字典列表</returns>
        public List<Model.T_Dictionary> GetList(Model.QueryDic query, int pageSize, int currentIndex, out int AllCount)
        {
            return dal.GetList(query, pageSize, currentIndex, out AllCount);
        }

        /// <summary>
        /// 根据主键ID获取字典
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>字典</returns>
        public Model.T_Dictionary Get(int? Id)
        {
            return dal.Get(Id);
        }

        public List<Model.T_Dictionary> GetList(Model.QueryDic query)
        {
            return dal.GetQueryable(query).ToList();
        }

        /// <summary>
        /// 添加字典
        /// </summary>
        /// <param name="model">字典对象</param>
        /// <returns>结果对象</returns>
        public ResultModel Add(Model.T_Dictionary dic)
        {

            ResultModel rm = new ResultModel();

            if (dal.Add(dic))
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
        /// 更新字典
        /// </summary>
        /// <param name="model">字典对象</param>
        /// <returns>结果对象</returns>
        public ResultModel Update(Model.T_Dictionary dic)
        {

            ResultModel rm = new ResultModel();

            if (dal.Update(dic))
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
        /// 删除字典
        /// </summary>
        /// <param name="Id">字典ID</param>
        /// <returns>结果对象</returns>
        public ResultModel Delete(int ID)
        {

            ResultModel rm = new ResultModel();

            if (dal.Delete(ID))
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
        /// 更新顺序
        /// </summary>
        /// <param name="oldShort">原有序号</param>
        /// <param name="newShort">现有序号</param>
        /// <returns></returns>
        public ResultModel Short(int oldShort, int newShort)
        {

            ResultModel rm = new ResultModel();
            try
            {
                dal.Short(oldShort, newShort);
                rm.Result = true;
            }
            catch (Exception ex)
            {
                rm.Result = false;
                rm.Message = ex.Message;

            }
            return rm;
        }
    }
}