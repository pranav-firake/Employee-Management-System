using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;
using DAL;


namespace Group4
{
    public partial class EmployeeHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/WelcomePage.aspx");
            }
            else
            {
                EmployeeBO ebo = new EmployeeBO();
                ebo.Username = Session["UserID"].ToString();
                EmployeeBL ebl = new EmployeeBL();
                string Empname = ebl.GetEmpname(ebo);
                lblUser.Text = "Welcome  " + Empname;
                Session["UserName"] = Empname;

            }
        }
    }
}