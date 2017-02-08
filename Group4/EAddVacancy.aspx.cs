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
    public partial class EAddVacancy : System.Web.UI.Page
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
                txtVacReqID.Text = Session["VacancyReq"].ToString();
        



            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtExperience.Text == null) { txtExperience.Text = "0"; }
            VacancyBO bo = new VacancyBO();
            bo.VacancyRequestID = Convert.ToInt32(txtVacReqID.Text);
            bo.NoOfPositions = Convert.ToInt32(txtNumberOfPositions.Text);
            bo.Skills =ddlSkills.SelectedValue.ToString();
            bo.Experience = Convert.ToInt32(txtExperience.Text);
            bo.Location = ddlLocation.SelectedValue;
            bo.BusinessDomain = ddlDomain.SelectedValue;
            bo.RequiredByDate = Convert.ToDateTime(txtDate.Text);
            bo.RequestStatus = 1;
           // bo.RecruitmentRequestID = 0;
            bo.ApprovalStatus = "pending";
            bo.EmployeeID = Convert.ToInt32(Session["UserID"].ToString());

            VacancyBL bl = new VacancyBL();

            //bool returnType = emp.AddEmployee(txtEmployeeName.Text, txtDesignation.Text, int.Parse(txtExperience.Text));
            bool returnType = bl.AddVacancy(bo);

            if (returnType)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancy added successfully');window.location='EAddVacancyRequest.aspx';", true);
                
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Failure')", true);
            }


         
        }

        protected void rblIsFresher_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblIsFresher.SelectedValue == "Fresher")
            {
                txtExperience.Visible = true;
                txtExperience.ReadOnly = true;
                txtExperience.Text = "0";
            }
            else if (rblIsFresher.SelectedValue == "Experienced")
            {
                txtExperience.ReadOnly = false;
                txtExperience.Visible = true;

            }
        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            if (txtDate.Text == null||txtDate.Text=="") { return; }
            DateTime reqDate = Convert.ToDateTime(txtDate.Text);
           DateTime marginDate=today.AddMonths(2);
           if (reqDate < today)
           {
               ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Enter future date')", true);
               txtDate.Text = "";
               return;

           }
           else if (reqDate > marginDate)
           {
               ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Required date can not be more than two months from today')", true);
               txtDate.Text = "";
               return;
           }
           else return;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeHome.aspx");
        }
    }
}