using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BO;

namespace Group4
{
    public partial class AddPlacementConsultant : System.Web.UI.Page
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
            }
        }

       
        protected void btncancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/HRHome.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtpcname.Text;
            string pwd = txtPwd.Text;
            string loc = ddlloc.SelectedValue;
            int HRID =  Convert.ToInt32(Session["UserID"].ToString());
            PlacementConsultantBO bo=new PlacementConsultantBO();
            bo.pcname = name;
            bo.pwd = pwd;
            bo.loc = loc;
            bo.HRID = HRID;
            
            PlacementConsultantBL bl1 = new PlacementConsultantBL();
            int result= bl1.AddPlacementConsultant(bo);
             if (result==1)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Placement Consultant added successfully');window.location='HRHome.aspx';", true);
                
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Failure')", true);
            }


            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HRHome.aspx");
        }

        

       
        }
    }
