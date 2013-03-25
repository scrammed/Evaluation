using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Login
    {
        public bool CheckLogin(string name, string pwd)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" select count(0) from base_admin ");
            strSql.Append(" where admin_loginname=@admin_loginname ");
            strSql.Append(" and admin_loginpswd=@admin_loginpswd ");

            SqlParameter[] parameters = { 
                                   	new SqlParameter("@admin_loginname", SqlDbType.VarChar,200),
                                    new SqlParameter("@admin_loginpswd", SqlDbType.VarChar,200)
                                        };
            parameters[0].Value = name;
            parameters[1].Value = pwd;
            return true;
        }
    }
}
