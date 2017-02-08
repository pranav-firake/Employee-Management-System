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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String name = Request.Form["name"].ToString();
            String email = Request.Form["email"].ToString();
  
            String msg = Request.Form["message"].ToString();
            ContactBO cbo = new ContactBO();
          
            cbo.name = name;
            cbo.email = email;
      
            cbo.msg = msg;
            ContactBL cbl = new ContactBL();
            int res=cbl.AddConactUS(cbo);
            if (res == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Some error occured.Sorry');window.location='WelcomePage.aspx';", true);
            }
            else 
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Thank you for your response');window.location='WelcomePage.aspx';", true);
            }



        }
    }
}