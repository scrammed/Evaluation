using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.Common;

namespace BLL
{
    public class Sorce
    {
        static DAL.Sorce dal = new DAL.Sorce();
        public static Sorce bll = new Sorce();

        /// <summary>
        /// 根据条件获取部门列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentIndex">当前页数</param>
        /// <param name="AllCount">所有记录数</param>
        /// <returns>部门列表</returns>
        public List<Model.DeptSorce> GetList(QueryDept query, int pageSize, int currentIndex, out int AllCount)
        {
            return dal.GetList(query, pageSize, currentIndex, out AllCount);
        }

        /// <summary>
        /// 提交投票结果
        /// </summary>
        /// <param name="DeptSorceList">部门评分列表</param>
        /// <param name="behalfId">代表ID</param>
        /// <returns>操作结果</returns>
        public Model.ResultModel Submit(List<T_Sorce> DeptSorceList, int behalfId)
        {
            ResultModel rm = new ResultModel();

            DB_EvaluationEntities db = Model.DB_Evaluation.Get();
            try
            {
                db.Connection.Open();
                using (DbTransaction tran = db.Connection.BeginTransaction())
                {
                    if (dal.Submit(DeptSorceList, db))
                    {
                        rm.Result = true;
                        rm.Message = "提交成功";
                    }
                    else
                    {
                        rm.Result = false;
                        rm.Message = "提交失败";
                    }

                    DAL.Behalf behalfDal = new DAL.Behalf();
                    behalfDal.UpdateVoted(behalfId, db);
                    db.SaveChanges();
                    tran.Commit();
                }
            }
            catch (Exception ex)
            {
                rm.Result = false;
                rm.Message = ex.Message;
            }
            finally
            {
                db.Connection.Close();
            }
            return rm;
        }

        /// <summary>
        /// 获取单位和类型列表
        /// </summary>
        /// <returns></returns>
        public List<Model.DeptSorce> GetDeptSorceList()
        {
            return dal.GetDeptSorceList();
        }
    }
}