using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public class ResultModel
    {
      public string Message;
      public bool Result;

      public ResultModel() { }
      public ResultModel(bool r,string message) 
      {
          this.Result = r;
          this.Message = message;
      }
      public static ResultModel CreateRM() 
      {
          return new ResultModel();
      }
    }
}
