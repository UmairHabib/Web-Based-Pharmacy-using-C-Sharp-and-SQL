using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MedicalStore
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.myClass userDal = new DAL.myClass();
            string id = TextBox1.Text;
            string name = TextBox2.Text;
            string mid = TextBox3.Text;
            string quantity = TextBox4.Text;
            string amount = TextBox5.Text;
            if (id == "" || name == "" || mid == "" || quantity == "" || amount == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
            {
                userDal.customer(id, name, mid, quantity, amount);
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DAL.myClass userDal = new DAL.myClass();
            string id = TextBox1.Text;
            string name = TextBox2.Text;
            string mid = TextBox3.Text;
            string quantity = TextBox4.Text;
            string amount = TextBox5.Text;
            if (id == "" || name == "" || mid == "" || quantity == "" || amount == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
            {
                int result = userDal.customer(id, name, mid, quantity, amount);
                int result1 = userDal.Bill(id);
                int result2 = userDal.repetedcustomer(id);
                if (result == -5 || result1 == -5 || result2 == -5)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('SQL Error');</script>");﻿
                }
                else
                Response.Redirect("~/Output4.aspx");
            }
        }
    }
}