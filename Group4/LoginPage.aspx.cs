using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;
using System.Security.Cryptography;
using System.Text;

namespace Group4
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = "";
            Session["UserName"] = "";


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

        protected void Submit_Click(object sender, EventArgs e)
        {
            EmployeeBO ebo = new EmployeeBO();
            ebo.Username = txtUsername.Text;
            string pass = GetSHA1HashData(txtPassword.Text);
            Label1.Text = pass;
            ebo.Password = pass;
            EmployeeBL ebl = new EmployeeBL();
            int returntype=ebl.VerifyAuth(ebo);
            if (returntype == 0) 
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Invalid username / Password')", true);
                txtUsername.Text = "";
                txtPassword.Text = "";
               
            }
            else if (returntype == 1)
            {
  
                Session["UserID"] = txtUsername.Text;
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Logged in as Employee Successfully');window.location='EmployeeHome.aspx';", true);
                
            }
            else if (returntype == 2)
            {
                
                Session["UserID"] = txtUsername.Text;
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Logged in as Unit Head Successfully');window.location='UnitheadHome.aspx';", true);
            }
            else if (returntype == 3)
            {
               
                Session["UserID"] = txtUsername.Text;
                ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('Logged in as HR Successfully');window.location='HRHome.aspx';", true);
            }
        }
  
    }
}