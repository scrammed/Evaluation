using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Enums
    {
        /// <summary>
        /// 短信评议
        /// </summary>
        public enum SmsPY
        {
            满意, 一般, 不满意
        }

        /// <summary>
        /// 网页评议
        /// </summary>
        public enum WebPY
        {
            不满意, 一般, 满意
        }


        public enum DicType
        {
            单位类型,代表水平,
            网站标题,是否开启评议,评论须知
        }
    }
}