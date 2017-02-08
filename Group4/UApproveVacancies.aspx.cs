using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BO;
using System.Data;

namespace Group4
{
    public partial class UApproveVacancies : System.Web.UI.Page
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
                //if (!IsPostBack)
                //{
                int eid = Convert.ToInt32(Session["UserID"].ToString());
                VacancyBL vb1 = new VacancyBL();
                DataTable dt = vb1.GetVacancyList(eid);
                gv1.DataSource = dt;
                gv1.DataBind();


                //}
                if (dt.Rows.Count == 0)
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('There are no pending vacancies');window.location='UnitheadHome.aspx';", true);
                }
            }
        }

        protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int eid = Convert.ToInt32(Session["UserID"].ToString());

            if (e.CommandName == "Approve")
            {

                VacancyBL vbl = new VacancyBL();
                int result = vbl.ApproveStatus(eid, Convert.ToInt32(e.CommandArgument.ToString()));
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Status changed successfully');window.location='UApproveVacancies.aspx';", true);
            }

            
        }

        protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }
    }
}