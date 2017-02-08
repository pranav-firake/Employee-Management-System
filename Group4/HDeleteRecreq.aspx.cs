using BLL;
using BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4
{
    public partial class HDeleteRecreq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/WelcomePage.aspx");
            }
            else
            {
                lblUser.Text = Session["UserName"].ToString();
                if (!IsPostBack)
                {
                    RecruitmentRequestBL pbl = new RecruitmentRequestBL();
                    List<int> pcList = new List<int>();
                    pcList = pbl.GetDDLRec();
                    ddlRecID.DataSource = pcList;
                    ddlRecID.AppendDataBoundItems = true;
                    ddlRecID.DataBind();
                    btndelete.Visible = false;
                }
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            btndelete.Visible = true;
            int recID = Convert.ToInt32(ddlRecID.SelectedValue.ToString());
            VacancyBO vbo = new VacancyBO();
            vbo.RecruitmentRequestID = recID;
     
            VacancyBL vbl = new VacancyBL();
            DataTable dt = vbl.DisplayVacancyByRecID(vbo);
            gv1.DataSource = dt;
            gv1.DataBind();
            if (dt.Rows.Count == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('There are no vacancies to display');", true);
               

            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int flag=0;
            int count = gv1.Rows.Count;
            int result1 = 0;
            int res=0;
            foreach (GridViewRow gvr in gv1.Rows)
            {
                 CheckBox chk = (CheckBox)gvr.FindControl("chk_select");


                 if (chk.Checked)
                 {
                     flag = flag+1;

                     Label vacidLabel = (Label)gvr.FindControl("lblname");
                     int vacids = Convert.ToInt32(vacidLabel.Text);

                     VacancyBO vbo = new VacancyBO();

                     vbo.VacancyID = vacids;

                     VacancyBL bl1 = new VacancyBL();
                     result1 = bl1.DeleteRecInVacancy(vbo);
                 }
            }
            if (flag == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Select atleast 1 Vacancy.')", true);
            }
            else if (count==flag)
                {
                    RecruitmentRequestBO bo = new RecruitmentRequestBO();
                    bo.recid = Convert.ToInt32(ddlRecID.SelectedValue.ToString());
                    RecruitmentRequestBL bl = new RecruitmentRequestBL();
                    res = bl.DeleteRecReq(bo);
                }

            if(result1==1&&res==1)
            {
              ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Recruitment Request is deleted successfully');window.location='HRHome.aspx';", true);

            }
            else if (result1 == 1)
                {
                   ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancies from Recruitment Request deleted successfully');window.location='HRHome.aspx';", true);
                }
            else {
                    ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Error Occured');window.location='HRHome.aspx';", true);
                }
            }
        }
    }
