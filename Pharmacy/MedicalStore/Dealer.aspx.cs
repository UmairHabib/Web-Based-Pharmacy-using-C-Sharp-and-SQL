using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalStore
{
    public partial class Dealer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Did"] = 1;
            Response.Redirect("~/Outputpage2.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Did"] = 2;
            Response.Redirect("~/Outputpage2.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Did"] = 3;
            Response.Redirect("~/Outputpage2.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["Did"] = 4;
            Response.Redirect("~/Outputpage2.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["Did"] = 5;
            Session["Did2"] = Textbox1.Text;
            if (Session["Did2"].ToString() == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
                Response.Redirect("~/Outputpage2.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["Did"] = 6;
            Session["Did2"] = Textbox2.Text;
            if (Session["Did2"].ToString() == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
                Response.Redirect("~/Outputpage2.aspx");
        }
    }
}