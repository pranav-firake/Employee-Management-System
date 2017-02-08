using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4
{
    public partial class UViewVacancy : System.Web.UI.Page
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
                int empid = Int32.Parse(Session["UserID"].ToString());

                VacancyBL vac1 = new VacancyBL();
                DataTable dt1 = vac1.GetVacancy(empid);
                gv1.DataSource = dt1;
                gv1.DataBind();
            }
        }
        public void bind()
        {
            int empid = Int32.Parse(Session["UserID"].ToString());
            VacancyBL vac2 = new VacancyBL();
            DataTable dt1 = vac2.GetVacancy(empid);
            gv1.DataSource = dt1;
            gv1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {


            gv1.EditIndex = -1;
            bind();


        }

        protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = gv1.Rows[e.RowIndex];
            HiddenField hdnID = (HiddenField)row.FindControl("hdnID");


            VacancyBL del = new VacancyBL();


            int result = del.DeleteVacancy(Convert.ToInt32(hdnID.Value));


            //Move to normal mode 
            gv1.EditIndex = -1;
            bind();


        }

        protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv1.EditIndex = e.NewEditIndex;
            bind();
        }

    }
}