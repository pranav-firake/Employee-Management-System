using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;


namespace Group4
{
    public partial class EAddVacancyRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/WelcomePage.aspx");
            }
            else
            {
                lblUser.Text = "Welcome  " + Session["UserName"].ToString();
                txtEmployeeID.Text = Session["UserID"].ToString();

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            VacancyRequestBO vbo = new VacancyRequestBO();
            vbo.EmployeeID = Int32.Parse(txtEmployeeID.Text);
            vbo.NoOfVacancies = Int32.Parse(txtNoV.Text);
            VacancyBL vbl = new VacancyBL();
           int rt = vbl.AddVacancyRequest(vbo);
           Session["VacancyReq"] = rt;

           ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancy Request added successfully');window.location='EAddVacancy.aspx';", true);
           
        }

        protected void txtNoV_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}