using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;
using System.Data;
using System.Data.SqlClient;

namespace Group4
{
    public partial class ViewPlacementConsultant : System.Web.UI.Page
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
                int empid = Int32.Parse(Session["UserID"].ToString());

                PlacementConsultantBL pc1 = new PlacementConsultantBL();
                DataTable dt1 = pc1.GetPC(empid);
                grdpc.DataSource = dt1;
                grdpc.DataBind();
            }
        }
    }
}