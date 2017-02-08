using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string pass = txtPassword.Text;
            string pass1 = GetSHA1HashData(pass);
            lblUsername.Text = pass1;
            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('"+pass1+"')", true);
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomePage.aspx");
        }
        private string GetSHA1HashData(string data)
        {
            //create new instance of sha1
            SHA1 sha = SHA1.Create();

            //convert the input text to array of bytes
            byte[] hashData = sha.ComputeHash(Encoding.Default.GetBytes(data));

            //create new instance of StringBuilder to save hashed data
            StringBuilder returnValue = new StringBuilder();

            //loop for each byte and add it to StringBuilder
            for (int i = 0; i < hashData.Length; i++)
            {
                returnValue.Append(hashData[i].ToString());
            }

            // return hexadecimal string
            return returnValue.ToString();

        }
     
    }
}