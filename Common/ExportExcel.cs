using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Reflection;
using System.Data;
using System.IO;

namespace Common
{
    public class ExportExcel
    {
        /**/
        /// <summary> 
        /// 将一组对象导出成EXCEL 
        /// </summary> 
        /// <typeparam name="T">要导出对象的类型</typeparam> 
        /// <param name="objList">一组对象</param> 
        /// <param name="FileName">导出后的文件名</param> 
        /// <param name="columnInfo">列名信息</param> 
        public static void ExExcel<T>(List<T> objList, string FileName, Dictionary<string, string> columnInfo)
        {
            ExExcel(objList, FileName, columnInfo, null);
        }
        /**/
        /// <summary> 
        /// 将一组对象导出成EXCEL 
        /// </summary> 
        /// <typeparam name="T">要导出对象的类型</typeparam> 
        /// <param name="objList">一组对象</param> 
        /// <param name="FileName">导出后的文件名</param> 
        /// <param name="columnInfo">列名信息</param> 
        /// <param name="other">追加其他内容</param> 
        public static void ExExcel<T>(List<T> objList, string FileName, Dictionary<string, string> columnInfo, string other)
        {
            if (columnInfo.Count == 0)
            {
                return;
            }
            if (objList.Count == 0)
            {
                return;
            }
            //生成EXCEL的HTML 
            string excelStr = "";

            Type myType = objList[0].GetType();
            //根据反射从传递进来的属性名信息得到要显示的属性 
            List<PropertyInfo> myPro = new List<PropertyInfo>();
            foreach (string cName in columnInfo.Keys)
            {
                PropertyInfo p = myType.GetProperty(cName);
                if (p != null)
                {
                    myPro.Add(p);
                    excelStr += columnInfo[cName] + "\t";
                }
            }
            //如果没有找到可用的属性则结束 
            if (myPro.Count == 0)
            {
                return;
            }
            excelStr += "\n";

            foreach (T obj in objList)
            {
                foreach (PropertyInfo p in myPro)
                {

                    excelStr += p.GetValue(obj, null) + "\t";

                }
                excelStr += "\n";
            }
            if (!string.IsNullOrEmpty(other))
            {
                excelStr += other;
            }
            //输出EXCEL 
            HttpResponse rs = System.Web.HttpContext.Current.Response;
            rs.Clear();
            rs.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            rs.AppendHeader("Content-Disposition", "attachment;filename=" + System.Web.HttpUtility.UrlEncode(FileName + ".xls", Encoding.UTF8));
            rs.ContentType = "application/ms-excel";
            rs.Write(excelStr);
            rs.End();
        }

        /// <summary>
        /// 将DataTable到出Excel
        /// </summary>
        /// <param name="excelName"></param>
        /// <param name="dt"></param>
        public static void ExportDataTableToExcel(string excelName, DataTable dt)
        {
            if (dt.Rows.Count==0)
            {
                return;
            }
            StringBuilder str = new StringBuilder();

            //写标题    
            for (int i = 0; i < dt.Columns.Count; i++)
            {
                if (i > 0)
                {
                    str.Append("\t");
                }
                str.Append(dt.Columns[i].ColumnName);
            }
            str.Append("\n");
            //写内容 
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    if (k > 0)
                    {
                        str.Append("\t");
                    }
                    str.Append(dt.Rows[j][k].ToString());
                }
                str.Append("\n");
            }

            //输出EXCEL 
            HttpResponse rs = System.Web.HttpContext.Current.Response;
            rs.Clear();
            rs.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            rs.AppendHeader("Content-Disposition", "attachment;filename=" + System.Web.HttpUtility.UrlEncode(excelName + ".xls", Encoding.UTF8));
            rs.ContentType = "application/ms-excel";
            rs.Write(str.ToString());
            rs.End();
        }
    }
}
