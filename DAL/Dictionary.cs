using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Model;
namespace DAL
{
    public class Dictionary
    {
        DB_EvaluationEntities db = Model.DB_Evaluation.Get();

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
            AllCount = 0;
            var list = GetQueryable(query);

            if (list != null)
            {
                if (pageSize == 0)
                {
                    AllCount = 0;
                    return list.ToList();
                }
                AllCount = list.Count();
                return list.ToList().Skip((currentIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            return new List<T_Dictionary>();
        }

        /// <summary>
        /// 根据条件获取字典列表
        /// </summary>
        /// <param name="query">条件查询对象</param>
        /// <returns>字典列表</returns>
        public IQueryable<Model.T_Dictionary> GetQueryable(Model.QueryDic query)
        {
            var qa = (from dic in db.T_Dictionary
                      where
                          ((string.IsNullOrEmpty(query.Type)) || dic.Type == query.Type)
                          && (string.IsNullOrEmpty(query.DisplayName) || (dic.DisplayText == query.DisplayName))
                          && (string.IsNullOrEmpty(query.Txt) || (dic.Txt == query.Txt))
                          && (query.ID == null || (dic.Id == query.ID))
                      orderby dic.Sort
                      select dic);
            return qa;
        }

        /// <summary>
        /// 根据主键ID获取字典
        /// </summary>
        /// <param name="Id">主键ID</param>
        /// <returns>字典</returns>
        public Model.T_Dictionary Get(int? Id)
        {
            return db.T_Dictionary.Where(each => each.Id == Id).FirstOrDefault();
        }

        /// <summary>
        /// 添加字典
        /// </summary>
        /// <param name="model">字典对象</param>
        /// <returns>是否成功</returns>
        public bool Add(Model.T_Dictionary model)
        {
            string detpType = Model.Enums.DicType.单位类型.ToString();
            model.Sort = db.T_Dictionary.Where(each => each.Type == detpType).Count()+1;
            db.AddToT_Dictionary(model);
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 更新字典
        /// </summary>
        /// <param name="model">字典对象</param>
        /// <returns>是否成功</returns>
        public bool Update(Model.T_Dictionary model)
        {
            Model.T_Dictionary d = Get(model.Id);
            d.DisplayText = model.DisplayText;
            d.Txt = model.Txt;
            d.Type = model.Type;
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 删除字典
        /// </summary>
        /// <param name="Id">字典ID</param>
        /// <returns>是否成功</returns>
        public bool Delete(int ID)
        {
            Model.T_Dictionary d = Get(ID);
            db.DeleteObject(d);
            db.SaveChanges();
            return true;
        }

        /// <summary>
        /// 更新顺序
        /// </summary>
        /// <param name="oldShort">原有序号</param>
        /// <param name="newShort">现有序号</param>
        /// <returns></returns>
        public bool Short(int oldShort, int newShort)
        {            
            var o = db.T_Dictionary.First(each => each.Sort == oldShort);
            o.Sort = newShort;
            var n = db.T_Dictionary.First(each => each.Sort == newShort);
            n.Sort = oldShort;
            db.SaveChanges();

            return true;

        }
    }
}