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
    public class VacancyBL
    {
        public bool AddVacancy(VacancyBO vac)
        {
            VacancyDB db = new VacancyDB();
            return db.AddVacancy(vac);
        }
        public int AddVacancyRequest(VacancyRequestBO vbo)
        {
            VacancyRequestDB db = new VacancyRequestDB();
            return db.AddVacancyRequest(vbo);
        }
        public DataTable GetVacancy(int selection)
        {
            VacancyDB db1 = new VacancyDB();
            return db1.GetVacancy(selection);
        }
        public int DeleteVacancy(int id)
        {
            VacancyDB del = new VacancyDB();
            return del.DeleteVacancy(id);
        }
        public int UpdateVacancy(VacancyBO upbo)
        {
            VacancyDB up = new VacancyDB();
            return up.UpdateVacancy(upbo);
        }
        public int ApproveStatus(int eid,int vid)
        {
            VacancyDB va = new VacancyDB();
            return va.ApproveStatus(eid,vid);
        }
        public DataTable GetVacancyList(int eid)
        {
            VacancyDB db1 = new VacancyDB();
            return db1.GetVacancyList(eid);
        }
        public int UpdateRecInVacancy(VacancyBO vbo)
        {
            VacancyDB vdb=new VacancyDB();
            return vdb.UpdateRecInVacancy(vbo);

        }
        public DataTable GetAllApprovedVacancy()
        {
            VacancyDB db = new VacancyDB();
            return db.GetAllApprovedVacancy();
        }
        public DataTable DisplayVacancyByRecID(VacancyBO vbo)
        {
            VacancyDB db = new VacancyDB();
            return db.DisplayVacancyByRecID(vbo);
        }
        public int DeleteRecInVacancy(VacancyBO vbo)
        {
            VacancyDB db=new VacancyDB();
            return db.DeleteRecInVacancy(vbo);
        }
    }

}

