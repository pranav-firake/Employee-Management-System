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
    public partial class HDeletePC : System.Web.UI.Page
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
                    int empid = Int32.Parse(Session["UserID"].ToString());

                    PlacementConsultantBL pc = new PlacementConsultantBL();
                    DataTable dt1 = pc.GetPC(empid);
                    grdpc.DataSource = dt1;
                    grdpc.DataBind();
                }
            }
        }
              public void bind()
        {
            int empid = Int32.Parse(Session["UserID"].ToString());

            PlacementConsultantBL vac2 = new PlacementConsultantBL();
            DataTable dt1 = vac2.GetPC(empid);
            grdpc.DataSource = dt1;
            grdpc.DataBind();
        }

        protected void grdpc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
             GridViewRow row = grdpc.Rows[e.RowIndex];
            HiddenField hdnID = (HiddenField)row.FindControl("hdnID");


            PlacementConsultantBL del = new PlacementConsultantBL();
            RecruitmentRequestBL rbl = new RecruitmentRequestBL();
            RecruitmentRequestBO rbo=new RecruitmentRequestBO();
            rbo.pcid = Convert.ToInt32(hdnID.Value);
            int Associated=rbl.CheckPC(rbo);
            if (Associated != 0) 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Placement Consultant can't be deleted as "+Associated+"  recruitment requests are associated with him/her.');window.location='HDeletePC.aspx';", true);
                return;
           }
             int result = del.DeletePC(Convert.ToInt32(hdnID.Value));

            ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Vacancy deleted successfully');", true);
            //Move to normal mode 
            grdpc.EditIndex = -1;
            bind();
        }
        }
    }
