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
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DAL.myClass userDal = new DAL.myClass();
            string PurchaseID = TextBox1.Text;
            string DealerID = TextBox2.Text;
            string Medicineid = TextBox3.Text;
            string PurchaseDate = TextBox4.Text;
            string Quantity = TextBox5.Text;
            string price = TextBox6.Text;
            string Totalprice = TextBox7.Text;
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
            {
                int result = userDal.dealer(PurchaseID, DealerID, Medicineid, PurchaseDate, Quantity, price, Totalprice);

                if (result == -5)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('SQL Error');</script>");﻿
                }
                else
                {
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DAL.myClass userDal = new DAL.myClass();
            string PurchaseID = TextBox1.Text;
            string DealerID = TextBox2.Text;
            string Medicineid = TextBox3.Text;
            string PurchaseDate = TextBox4.Text;
            string Quantity = TextBox5.Text;
            string price = TextBox6.Text;
            string Totalprice = TextBox7.Text;


            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else
            {
                int result = userDal.dealer(PurchaseID, DealerID, Medicineid, PurchaseDate, Quantity, price, Totalprice);
                userDal.showdealerbill();
                if (result == -5)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('SQL Error');</script>");﻿
                }
                else
                Response.Redirect("~/Output5.aspx");
            }
        }

    }
}