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
    public partial class Outputpage3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Employ"].ToString() == "1")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.showallEmployees();
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";

                GridView1.DataBind();
            }
            else if (Session["Employ"].ToString() == "2")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.findemploy(Session["Eid"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Employ"].ToString() == "3")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.findemployname(Session["Eid"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
        }
    }
}