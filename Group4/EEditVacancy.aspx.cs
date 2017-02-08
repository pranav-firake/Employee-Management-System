using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
using BO;


namespace Group4
{
    public partial class EEditVacancy : System.Web.UI.Page
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
                if (!IsPostBack)
                {
                    int empid = Int32.Parse(Session["UserID"].ToString());

                    VacancyBL vac1 = new VacancyBL();
                    DataTable dt1 = vac1.GetVacancy(empid);
                    gv1.DataSource = dt1;
                    gv1.DataBind();
                }
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
            GridViewRow row = gv1.Rows[e.RowIndex];
            HiddenField hdnID = (HiddenField)row.FindControl("hdnID");
            TextBox positions = (TextBox)row.FindControl("txtpositions");
            DropDownList skills = (DropDownList)row.FindControl("ddlSkills");
            //TextBox skills = (TextBox)row.FindControl("txtskills");
            TextBox experience = (TextBox)row.FindControl("txtexp");
            //TextBox location = (TextBox)row.FindControl("txtlocation");
            DropDownList location = (DropDownList)row.FindControl("ddlLocation");
            //TextBox domain = (TextBox)row.FindControl("txtdomain");
            DropDownList domain = (DropDownList)row.FindControl("ddlDomain");
            TextBox date = (TextBox)row.FindControl("txtdate");
            VacancyBO upbo = new VacancyBO();
            upbo.VacancyID = Convert.ToInt32(hdnID.Value.ToString());
            upbo.NoOfPositions = Convert.ToInt32(positions.Text);
            upbo.Skills = Convert.ToString(skills.Text);
            upbo.Experience = Convert.ToInt32(experience.Text);
            upbo.Location = Convert.ToString(location.Text);
            upbo.BusinessDomain = Convert.ToString(domain.Text);
            upbo.RequiredByDate = Convert.ToDateTime(date.Text.ToString());

            DateTime today = DateTime.Now;
            if (date.Text == null || date.Text == "") { return; }
            DateTime reqDate = Convert.ToDateTime(date.Text);
            DateTime marginDate = today.AddMonths(2);
            if (reqDate < today)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Enter future date')", true);
                date.Text = "";
                return;

            }
            else if (reqDate > marginDate)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Required date can not be more than two months from today')", true);
                date.Text = "";
                return;
            }
           




            //Id is displayed in the page directly. Call the required method to delete customer by id 
            //dCustomerDBb = new CustomerDB(); 
            VacancyBL update = new VacancyBL();
            int result1 = update.UpdateVacancy(upbo);
            //int result1 = update.UpdateVacancy(Convert.ToInt32(hdnID.Value), Convert.ToInt32(positions.Text),skills.Text,Convert.ToInt32(experience.Text),location.Text,domain.Text,Convert.ToDateTime(date.Text));
            ////int result = db.updateCustomer(Convert.ToInt32(hdnID.Value), Convert.ToInt32(txtAge.Text));
            if (result1 == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertkey", "<script>alert('Details Updated successfully');</script>", false);
            }
            gv1.EditIndex = -1;
            bind();
        }

        protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv1.EditIndex = e.NewEditIndex;
            bind();
        }
    }
}