﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;

namespace Group4.HRHome
{
    public partial class HRHome : System.Web.UI.Page
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
                lblUser.Text = Empname;
                Session["UserName"] = Empname;
            }
        }
    }
}