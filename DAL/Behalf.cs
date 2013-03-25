using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Model;
namespace DAL
{
    public class Behalf
    {
        DB_EvaluationEntities db = Model.DB_Evaluation.Get();

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
            AllCount = 0;
            var list = Get(query);
            if (list != null)
            {
                if (pageSize == 0)
                {
                    AllCount = 0;
                    return list;
                }
                AllCount = list.Count();
                return list.Skip((currentIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            return new List<T_Behalf>();
        }

        /// <summary>
        /// 根据条件获取代表列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <returns>代表列表</returns>
        public List<T_Behalf> Get(QueryBehalf query)
        {
            db.Refresh(System.Data.Objects.RefreshMode.ClientWins, db.T_Behalf);
            var queryable = (from behalf in db.T_Behalf
                             where ((behalf.IsDel.Equals(null) || behalf.IsDel == false)
                                     && (string.IsNullOrEmpty(query.UserName) || behalf.UserName == query.UserName || (query.IsLikeSearch == true && behalf.UserName.Contains(query.UserName)))
                                     && (string.IsNullOrEmpty(query.Phone) || behalf.Telephone == query.Phone || (query.IsLikeSearch == true && behalf.Phone.Contains(query.Phone)))
                                     && ((query.BehalfLevel == null) || behalf.BehalfLevel == query.BehalfLevel)
                                     && ((query.IsVoted == null || query.IsVoted == 0) || (behalf.IsVoted.Value == query.IsVoted)))
                             select behalf);
            return queryable.ToList();
        }

        /// <summary>
        /// 根据主键ID获取代表
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>代表</returns>
        public Model.T_Behalf Get(int? Id)
        {
            return (from a in db.T_Behalf where (a.IsDel == null || a.IsDel == false) && a.Id == Id select a).FirstOrDefault();

        }

        /// <summary>
        /// 根据代表账号获取代表
        /// </summary>
        /// <param name="username">代表账号</param>
        /// <returns>代表</returns>
        public Model.T_Behalf Get(string username)
        {
            return (from a in db.T_Behalf where (a.IsDel == null || a.IsDel == false) && a.UserName == username select a).FirstOrDefault();
        }

        /// <summary>
        /// 添加代表
        /// </summary>
        /// <param name="model">代表对象</param>
        /// <returns>是否成功</returns>
        public bool Add(Model.T_Behalf model)
        {
            db.AddToT_Behalf(model);
            db.SaveChanges();
            return true;
        }


        /// <summary>
        /// 更新代表
        /// </summary>
        /// <param name="model">代表对象</param>
        /// <returns>是否成功</returns>
        public bool Update(Model.T_Behalf model)
        {
            Model.T_Behalf b = Get(model.Id);
            b.BehalfLevel = model.BehalfLevel;
            b.Department = model.Department;
            b.Email = model.Email;
            b.Isthisdept = model.Isthisdept;
            b.Phone = model.Phone;
            b.Position = model.Position;
            b.Telephone = model.Telephone;
            b.UserName = model.UserName;
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 删除代表
        /// </summary>
        /// <param name="Id">代表ID</param>
        /// <returns>是否成功</returns>
        public bool Delete(int Id)
        {
            Model.T_Behalf model = Get(Id);
            model.IsDel = true;
            db.SaveChanges();
            return true;

        }

        /// <summary>
        /// 更新代表投票情况
        /// </summary>
        /// <param name="id">代表ID</param>
        /// <param name="DB">数据库对象</param>
        public void UpdateVoted(int id, DB_EvaluationEntities DB)
        {
            Model.T_Behalf b = DB.T_Behalf.First(o => o.Id == id);
            b.IsVoted = 1;
        }
    }
}