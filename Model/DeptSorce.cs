using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public class DeptSorce
    {
       public int Id;
       public string DeptName;
       public int? TypeId;
       public double? Sorce;


       public string TypeName;
      public List<Model.T_Department> DeptList;
    }
}
