using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
namespace DAL
{
    public class Department
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
        public List<Model.Department> GetList(QueryDept query, int pageSize, int currentIndex, out int AllCount)
        {
            AllCount = 0;

            var list = Get(query);

            if (pageSize == 0)
            {
                return list;
            }


            AllCount = list.Count();
            return list.Skip((currentIndex - 1) * pageSize).Take(pageSize).ToList();
        }

        /// <summary>
        /// 根据条件获取部门列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <returns>部门列表</returns>
        public List<Model.Department> Get(QueryDept query)
        {
            var queryTable = (from dept in db.T_Department
                              join dic in db.T_Dictionary on dept.TypeId equals dic.Id
                              into deptDic
                              from dd in deptDic
                              where
                              (
                              (dept.IsDel.Equals(null) || dept.IsDel == false)
                              && (string.IsNullOrEmpty(query.DeptName) || dept.DeptName == query.DeptName)
                              && ((query.DicId == null) || dept.TypeId == query.DicId)
                              && ((query.ID == null) || dept.Id == query.ID)
                           )
                              orderby dept.Sort
                              select new Model.Department
                              {
                                  DeptName = dept.DeptName,
                                  TypeId = dd.Id,
                                  DeptTypeName = dd.DisplayText,
                                  Id = dept.Id,
                                  Sort = dept.Sort
                              });
            return queryTable.ToList();

        }

        /// <summary>
        /// 根据主键ID获取部门
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>部门</returns>
        public Model.T_Department Get(int Id)
        {
            return (from dept in db.T_Department where (dept.IsDel == null || dept.IsDel == false) && (dept.Id == Id) select dept).FirstOrDefault();
        }
        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="model">部门对象</param>
        /// <returns>是否成功</returns>
        public bool Add(Model.T_Department model)
        {
            if (model.Sort == -1)
            {
                model.Sort = db.T_Department.Max(each => each.Sort) + 1;
            }
            db.AddToT_Department(model);
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 更新部门
        /// </summary>
        /// <param name="model">部门对象</param>
        /// <returns>是否成功</returns>
        public bool Update(Model.T_Department model)
        {
            Model.T_Department d = Get(model.Id);
            d.Sort = model.Sort;
            d.DeptName = model.DeptName;
            d.TypeId = model.TypeId;
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="Id">部门ID</param>
        /// <returns>是否成功</returns>
        public bool Delete(int Id)
        {
            Model.T_Department model = Get(Id);
            model.IsDel = true;
            db.SaveChanges();
            return true;
        }

    }
}