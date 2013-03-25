using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Model;

namespace DAL
{
    public class Sorce
    {
        DB_EvaluationEntities db = Model.DB_Evaluation.Get();

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
            AllCount = 0;
            var list =
               from item in
                   (
                       from sorce in db.T_Sorce
                       join dept in db.T_Department on sorce.DeptID equals dept.Id
                       select new
                       {
                           sorce.Sorce,
                           sorce.Id,
                           sorce.DeptID,
                           dept.DeptName,
                           dept.TypeId
                       }
                   )
               group item by item.DeptID into sorceGroup
               select new Model.DeptSorce
               {
                   Sorce = sorceGroup.Sum(each => each.Sorce) / sorceGroup.Count(),
                   DeptName = sorceGroup.Max(o => o.DeptName),
                   TypeId = sorceGroup.Max(o => o.TypeId)
               };

            if (pageSize == 0)
            {
                return list.ToList();
            }
            AllCount = list.Count();
            return list.ToList().Skip((currentIndex - 1) * pageSize).Take(pageSize).ToList();
        }

        /// <summary>
        /// 提交投票结果
        /// </summary>
        /// <param name="DeptSorceList">部门评分列表</param>
        /// <param name="DB">数据库对象</param>
        /// <returns>是否成功</returns>
        public bool Submit(List<Model.T_Sorce> DeptSorceList, DB_EvaluationEntities DB)
        {
            try
            {
                foreach (Model.T_Sorce item in DeptSorceList)
                {
                    DB.AddToT_Sorce(item);
                }
            }
            catch
            {
            }
            finally
            {

            }

            return true;
        }

        /// <summary>
        /// 获取单位和类型列表
        /// </summary>
        /// <returns></returns>
        public List<Model.DeptSorce> GetDeptSorceList()
        {
            List<Model.DeptSorce> dsList = new List<DeptSorce>();
            string  deptType= Convert.ToString(Model.Enums.DicType.单位类型);
            var typeList = db.T_Dictionary.Where(each => each.Type == deptType).OrderBy(each=>each.Sort).ToList();
            foreach (var item in typeList)
            {
                Model.DeptSorce ds = new DeptSorce();
                ds.TypeName = item.DisplayText;
                ds.DeptList = db.T_Department.Where(each => each.TypeId == item.Id && (each.IsDel == null || each.IsDel == false)).ToList();
                dsList.Add(ds);
            }
            return dsList;
        }
    }
}