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
    public partial class HEditPC : System.Web.UI.Page
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

             protected void grdpc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
             {
                 grdpc.EditIndex = -1;
                 bind();

             }

            

             protected void grdpc_RowEditing(object sender, GridViewEditEventArgs e)
             {
                 grdpc.EditIndex = e.NewEditIndex;
                 bind();
             }

             protected void grdpc_RowUpdating(object sender, GridViewUpdateEventArgs e)
             {
                 GridViewRow row = grdpc.Rows[e.RowIndex];
                 HiddenField hdnID = (HiddenField)row.FindControl("hdnID");
                 TextBox name = (TextBox)row.FindControl("txtname");
                 TextBox pwd = (TextBox)row.FindControl("txtpwd");
                 TextBox location = (TextBox)row.FindControl("txtloc");
                 DropDownList loc1 = (DropDownList)row.FindControl("ddlloc1");
                PlacementConsultantBO bo = new PlacementConsultantBO ();
                 bo.pcid = Convert.ToInt32(hdnID.Value.ToString());
                 bo.pcname = Convert.ToString(name.Text);
                 bo.pwd = Convert.ToString(pwd.Text);
                 bo.loc = Convert.ToString(loc1.Text);
              
                 PlacementConsultantBL update = new PlacementConsultantBL();
                 int result1 = update.UpdatePC(bo);
               
                 if (result1 == 1)
                 {
                     Page.ClientScript.RegisterStartupScript(this.GetType(), "alertkey", "<script>alert('Details Updated successfully');</script>", false);
                 }
                 grdpc.EditIndex = -1;
                 bind();
             }

    }
    }
