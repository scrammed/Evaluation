using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class QueryDic
    {
        public string DisplayName;
        public string Txt;
        public string Type;
        public int? ID;
    }
    public class QueryDept
    {
        public string DeptName;
        public int? DicId;
        public int? ID;
    }
    public class QueryBehalf
    {
        public string UserName;
        public string TelePhone;
        public string Phone;
        public int? BehalfLevel;
        public int? IsVoted;
        public int? ID;

        public bool? IsLikeSearch;
    }

}
