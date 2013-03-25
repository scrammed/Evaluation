using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Model
{
    public class DB_Evaluation
    {
        public static DB_EvaluationEntities Get()
        {
            string _connectionString = ConfigurationManager.ConnectionStrings["DB_EvaluationEntities"].ConnectionString;
            return new DB_EvaluationEntities(_connectionString);
        }
    }
}
