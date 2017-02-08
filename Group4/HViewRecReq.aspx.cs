using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BO;
using System.Data;

namespace Group4
{
    public partial class HViewRecReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gv1.Visible = false;
            if (Session["UserName"]==null)
            {
                Response.Redirect("~/WelcomePage.aspx");
            }
            else
            {



                lblUser.Text = Session["UserName"].ToString();
                if (!IsPostBack)
                {
                    ddlPCID.Visible = true;
                    lblSelect.Visible = true;
                    ddlReqDate.Visible = true;
                    lblSelect2.Visible = true;

                    PlacementConsultantBL pbl = new PlacementConsultantBL();
                    List<int> pcList = new List<int>();
                    pcList = pbl.GetDDLPC();
                    ddlPCID.DataSource = pcList;
                    ddlPCID.AppendDataBoundItems = true;
                    ddlPCID.DataBind();
                    RecruitmentRequestBL rbl = new RecruitmentRequestBL();

                    List<string> rdList = new List<string>();
                    rdList = rbl.GetDDLRD();
                    ddlReqDate.DataSource = rdList;
                    ddlReqDate.AppendDataBoundItems = true;
                    ddlReqDate.DataBind();

                    RecruitmentRequestBL bl = new RecruitmentRequestBL();
                    DataTable result = bl.GetRecReqDetails();


                    gv1.DataSource = result;
                    gv1.DataBind();
                   

                    if (gv1.Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "alertMessage", "alert('There are no recruitment requests to display');window.location='HRHome.aspx';", true);

                    }

                }

            }

        }



        protected void ddlPCID_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlReqDate.Visible = false;
            lblSelect2.Visible = false;
            if (ddlPCID.SelectedIndex != 0)
            {
                RecruitmentRequestBL bl1 = new RecruitmentRequestBL();
                RecruitmentRequestBO bo = new RecruitmentRequestBO();
                bo.pcid = Convert.ToInt32(ddlPCID.SelectedValue.ToString());
                DataTable result = bl1.GetRecReqDetailsByPC(bo);
                gv1.Visible = true;
                gv1.DataSource = result;
                gv1.DataBind();
            }
        }

        protected void ddlReqDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlPCID.Visible = false;
            lblSelect.Visible = false;
            if (ddlReqDate.SelectedIndex != 0)
            {

                RecruitmentRequestBL bl1 = new RecruitmentRequestBL();
                RecruitmentRequestBO bo = new RecruitmentRequestBO();
                bo.Requested_Date = Convert.ToDateTime(ddlReqDate.SelectedValue.ToString());
                DataTable result = bl1.GetRecReqDetailsByRD(bo);
                gv1.Visible = true;
                gv1.DataSource = result;
                gv1.DataBind();
            }
        }

        
      
        protected void btnreset_Click(object sender, EventArgs e)
        {
            ddlReqDate.SelectedIndex = 0;
            ddlPCID.SelectedIndex = 0;
            ddlPCID.Visible = true;
            lblSelect.Visible = true;
            ddlReqDate.Visible = true;
            lblSelect2.Visible = true;

        }
    }
}