using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BO
{
    public class PlacementConsultantBO
    {
        public int pcid;
        public string pcname;
        public string pwd;
        public string loc;
        public int HRID;
        public PlacementConsultantBO(int id)
        {
            this.pcid = id;
        }
        public PlacementConsultantBO()
        {
           
        }

    }
}
