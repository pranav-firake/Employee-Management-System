using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using DAL;
using System.Data;


namespace BLL
{
   public class EmployeeBL
    {
       public int VerifyAuth(EmployeeBO obj) 
       {
           EmployeeDB edb = new EmployeeDB();
           return edb.VerifyAuth(obj);
       }
       public string GetEmpname(EmployeeBO obj)
       {
           EmployeeDB edb = new EmployeeDB();
           return edb.GetEmpname(obj);
       }
       
   }
}
