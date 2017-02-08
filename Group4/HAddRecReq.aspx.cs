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
    public partial class HAddRecReq : System.Web.UI.Page
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
                        VacancyBL vbl = new VacancyBL();
                        DataTable res = vbl.GetAllApprovedVacancy();
                        gv1.DataSource = res;
                        gv1.DataBind();
                        if (gv1.Rows.Count == 0)
                        {
                            ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('No Vacancies to add.');window.location='HRHome.aspx';", true);
                            btnSubmit.Visible = false;
                            ddlpcid.Visible = false;
                            lblNoV.Visible = false;
                        }


                        PlacementConsultantBL bl = new PlacementConsultantBL();
                        List<int> pclist = new List<int>();
                        pclist = bl.GetDDLPC();
                        ddlpcid.DataSource = pclist;
                        ddlpcid.AppendDataBoundItems = true;
                        ddlpcid.DataBind();
                    }
                
            }
        }
        protected void bindData()
        {

            VacancyBL vbl = new VacancyBL();
            DataTable res = vbl.GetAllApprovedVacancy();
            gv1.DataSource = res;
            gv1.DataBind();
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            int pcid = Convert.ToInt32(ddlpcid.SelectedValue.ToString());

            RecruitmentRequestBO rbo = new RecruitmentRequestBO();

            rbo.pcid = pcid;
            rbo.Requested_Date = DateTime.Now;

            RecruitmentRequestBL rbl = new RecruitmentRequestBL();
            result = rbl.AddRecruitmentRequest(rbo);
            if (result == 0)
            {
                 
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Failure');window.location='HRHome.aspx';", true);
                
            }
            else
            {
                int rec = result;
                int flag = 0;
                int result1=0;
             
              //int[] vacids;
               

            foreach (GridViewRow gvr in gv1.Rows)
            {
                CheckBox chk = (CheckBox)gvr.FindControl("chk_select");
                

                if(chk.Checked)
                {
                    flag = 1;
                    Label vacidLabel = (Label)gvr.FindControl("lblname");
                        int vacids= Convert.ToInt32(vacidLabel.Text);
                        int HRID = Convert.ToInt32(Session["UserID"].ToString());
                        VacancyBO vbo = new VacancyBO();
                        vbo.RecruitmentRequestID = rec;
                        vbo.VacancyID = vacids;

                        VacancyBL bl1 = new VacancyBL();
                         result1 = bl1.UpdateRecInVacancy(vbo);
                       
                    }
              
                }
            if (flag == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Select atleast 1 vacancy.');window.location='HAddRecReq.aspx';", true);
            }
            else if (result1 == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Failed to add Vacancy.');window.location='HRHome.aspx';", true);
            }
            else
            ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Recruitment Request added successfully');window.location='HRHome.aspx';", true);
            }

           
            }
        }
    }
