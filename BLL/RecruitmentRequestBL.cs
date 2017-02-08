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
    public  class RecruitmentRequestBL
    {
       
        public int AddRecruitmentRequest(RecruitmentRequestBO rbo)
    {
        RecruitmentRequestDB rdb = new RecruitmentRequestDB();
        return rdb.AddRecruitmentRequest(rbo);
    }
        public List<string> GetDDLRD()
        {
            RecruitmentRequestDB db = new RecruitmentRequestDB();
            return db.GetDDLRD();
        }
        public DataTable GetRecReqDetails()
        {
            RecruitmentRequestDB db = new RecruitmentRequestDB();
            return db.GetRecReqDetails();
        }
        public DataTable GetRecReqDetailsByPC(RecruitmentRequestBO bo)
        {
            RecruitmentRequestDB db = new RecruitmentRequestDB();
            return db.GetRecReqDetailsByPC(bo);
        }
        public DataTable GetRecReqDetailsByRD(RecruitmentRequestBO bo)
        {
            RecruitmentRequestDB db = new RecruitmentRequestDB();
            return db.GetRecReqDetailsByRD(bo);
        }
        public int DeleteRecReq(RecruitmentRequestBO bo)
      {
        RecruitmentRequestDB db=new RecruitmentRequestDB();
        return db.DeleteRecReq(bo);
    }
        public List<int> GetDDLRec()
        {
            RecruitmentRequestDB db = new RecruitmentRequestDB();
            return db.GetDDLRec();
        }
        public int CheckPC(RecruitmentRequestBO rbo)
        {
            RecruitmentRequestDB rdb = new RecruitmentRequestDB();
            return rdb.CheckPC(rbo);
        }
       
    }
}
