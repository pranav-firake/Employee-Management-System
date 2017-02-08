using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BO
{
    public class VacancyBO
    {
        public int VacancyID;
        public int NoOfPositions;
        public string Skills;
        public int Experience;
        public string Location;
        public string BusinessDomain;
        public DateTime RequiredByDate;
        public int RequestStatus;
        public int VacancyRequestID;
        public int RecruitmentRequestID;
        public string ApprovalStatus;
        public int EmployeeID { get; set; }
    }
}
