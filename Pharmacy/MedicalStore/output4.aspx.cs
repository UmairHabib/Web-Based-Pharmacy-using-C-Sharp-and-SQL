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
    public partial class output4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

 
                DAL.myClass userDal = new DAL.myClass();
                DataTable table = new DataTable();
                table = userDal.showbill();
                GridView1.DataSource = table;
                GridView1.EmptyDataText = "Amount is less or due to another fault No record found";
                GridView1.DataBind();


        }
    }
}