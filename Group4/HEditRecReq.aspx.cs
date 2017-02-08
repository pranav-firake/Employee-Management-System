using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;
using System.Data;



namespace Group4
{
    public partial class HEditRecReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/WelcomePage.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    lblUser.Text = Session["UserName"].ToString();
                    btnAddVacancies.Visible = false;
                    btnDeleteVac.Visible = false;
                    btnAdd.Visible = false;

                    RecruitmentRequestBL pbl = new RecruitmentRequestBL();
                    List<int> pcList = new List<int>();
                    pcList = pbl.GetDDLRec();
                    ddlRecID.AppendDataBoundItems = true;
                    ddlRecID.DataSource = pcList;
                    ddlRecID.DataBind();
                }
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            int recID=Convert.ToInt32(ddlRecID.SelectedValue.ToString());
            VacancyBO vbo = new VacancyBO();
            vbo.RecruitmentRequestID = recID;
            
            VacancyBL vbl = new VacancyBL();
            DataTable dt = vbl.DisplayVacancyByRecID(vbo);
            gv1.DataSource = dt;
            gv1.DataBind();
            btnAddVacancies.Visible = false ;
            btnDeleteVac.Visible = true;
            btnAdd.Visible = true;
            if (dt.Rows.Count == 0) 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('There are no vacancies to display');", true);
               
                
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int flag = 0;
            int result1 = 0;
            foreach (GridViewRow gvr in gv1.Rows)
            {
            CheckBox chk = (CheckBox)gvr.FindControl("chk_select");
                

                if(chk.Checked)
                {
                    flag = 1;
                    Label vacidLabel = (Label)gvr.FindControl("lblname");
                        int vacids= Convert.ToInt32(vacidLabel.Text);
                      
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
            else if (result1 == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Failure')", true);
               

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancies from recruitment Request deleted successfully');window.location='HRHome.aspx';", true);
            }

                }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            ddlRecID.Visible = false;
            lblSelect.Visible = false;
            Submit.Visible = false;
            btnDeleteVac.Visible = false;
            btnAddVacancies.Visible = true;
            btnAdd.Visible = false;
            VacancyBL vbl = new VacancyBL();
            DataTable res = vbl.GetAllApprovedVacancy();
            gv1.DataSource = res;
            gv1.DataBind();
            
            if (res.Rows.Count == 0) 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('There are no vacancies to add');window.location='HRHome.aspx';", true);
            }

        }

        protected void btnAddVacancies_Click(object sender, EventArgs e)
        {
            int flag = 0;
            int res = 0;
            foreach (GridViewRow gvr in gv1.Rows)
            {
                CheckBox chk = (CheckBox)gvr.FindControl("chk_select");


                if (chk.Checked)
                {
                    flag = 1;
                    Label vacidLabel = (Label)gvr.FindControl("lblname");
                    int vacids = Convert.ToInt32(vacidLabel.Text);
                    int HRID = Convert.ToInt32(Session["UserID"].ToString());
                    VacancyBO vbo = new VacancyBO();
                    vbo.RecruitmentRequestID = Convert.ToInt32(ddlRecID.SelectedValue.ToString());
                    vbo.VacancyID = vacids;

                    VacancyBL bl1 = new VacancyBL();
                    res = bl1.UpdateRecInVacancy(vbo);
                   

                }
               
            }
            if (flag == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Select atleast 1 Vacancy.')", true);
            }
           else if (res == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Failure')", true);


            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancies are added to recruitment request successfully');window.location='HRHome.aspx';", true);
            }
        }
        }
    }
