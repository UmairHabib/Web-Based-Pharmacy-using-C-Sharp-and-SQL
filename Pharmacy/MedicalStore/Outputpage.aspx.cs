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
    public partial class Outputpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Button"].ToString() == "1")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.showallMedicine();
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "2")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.showOutOfStock();
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "3")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.showAllExpired();
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "4")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.searchMedicinebyId(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "5")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.ExpireMedicinebyId(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "6")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.whotookthesemedicine(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "7")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.findallinfo(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "8")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.quantityleft(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "9")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.purchasedate(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "10")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.noofsale(Session["id"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "11")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.updatemanf(Session["id"].ToString(), Session["id2"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
            else if (Session["Button"].ToString() == "12")
            {
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.updateexpiry(Session["id"].ToString(), Session["id2"].ToString());
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataBind();
            }
        }
    }
}