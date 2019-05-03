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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button2_Click(object sender, EventArgs e)
        {
            DAL.myClass userDal = new DAL.myClass();
            DataTable DT = new DataTable();
            if (TextBox8.Text != TextBox9.Text)
            {
                Label1.Text = "Password not same!";
            }
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Kindly Enter Data');</script>");﻿
            }
            else if (TextBox8.Text == TextBox9.Text)
            {
                int result = userDal.Signup(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Int32.Parse(TextBox5.Text), TextBox7.Text, TextBox6.Text, TextBox8.Text);
                if (result == 0)
                {
                    Label1.Text = "Username already exists!";
                }

                else if (result == 1)
                {
                    Label1.Text = "Account made successfully!";
                }

                else if (result == -5)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('SQL Error');</script>");﻿
                }
            }
        }

    }
}