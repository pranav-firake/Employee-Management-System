using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class PlacementConsultantBL
    {
        public int AddPlacementConsultant(PlacementConsultantBO bo)
        {
            PlacementConsultantDB db = new PlacementConsultantDB();
            return db.AddPlacementConsultant(bo);
        }
        public DataTable GetPC(int HRID)
        {
            PlacementConsultantDB db1 = new PlacementConsultantDB();
            return db1.GetPC(HRID);
        }
        public List<int> GetDDLPC()
        {
            PlacementConsultantDB db = new PlacementConsultantDB();
            return db.GetDDLPC();
        }
        public int UpdatePC(PlacementConsultantBO bo)
        {
            PlacementConsultantDB db2 = new PlacementConsultantDB();
            return db2.UpdatePC(bo);
        }
        public int DeletePC(int id)
        {
            PlacementConsultantDB db3 = new PlacementConsultantDB();
            return db3.DeletePC(id);
        }
    }
}
