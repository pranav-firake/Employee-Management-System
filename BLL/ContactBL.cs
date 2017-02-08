using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using DAL;

namespace BLL
{
   public class ContactBL
    {
       public int AddConactUS(ContactBO bo)
       {
           ContactDB db = new ContactDB();
           return db.AddContactUS(bo);
       }
    }
}
