using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MedicalStore.DAL
{
    public class myClass
    {
        private static readonly string connString =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
        public DataTable showalldealers()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Dealer", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showallcompanies()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Company", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showallsales()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Sales", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showallpurchases()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Purchase", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showallEmployees()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Employ", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable findemploy(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_Employ '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable searchdealerbyid(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_Dealer '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable DealernamefromCompID(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute DealernamefromCompID '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable findemployname(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_Employ_Name '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {

                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showallMedicine()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("execute Show_All_Medicine", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showOutOfStock()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();

            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("execute Show_outofstock", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable showAllExpired()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("execute Show_All_Expired", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable searchMedicinebyId(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_Price '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable ExpireMedicinebyId(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_Expiry '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable whotookthesemedicine(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Who_took_these '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable findallinfo(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Find_All_Info '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable quantityleft(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Quantityleft '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable purchasedate(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute PurchaseDates '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable noofsale(string id)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute noOfSale '{0}'", id), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable updatemanf(string id, string id2)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Update_Manf '{0}''{0}'", id, id2), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public DataTable updateexpiry(string id, string id2)
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter(String.Format("execute Update_Expiry '{0}''{0}'", id, id2), sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {

                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public int Login(string id, string pas)
        {
            int ans = -1;
            DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            try
            {
                sqlcommand = new SqlCommand("dbo.LoginDatabase", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@usr", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@pas", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@ans", SqlDbType.Int).Direction = ParameterDirection.Output;
                sqlcommand.Parameters["@usr"].Value = id;
                sqlcommand.Parameters["@pas"].Value = pas;
                sqlcommand.ExecuteNonQuery();
                ans = Convert.ToInt32(sqlcommand.Parameters["@ans"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
            return ans;
        }
        public int Signup(string Name, string Contact, string House, string Designation, int Salary, string Email, string UserN, string Pass)
        {
            int ans = -1;
            int Fans = -1;
            DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            SqlCommand sqlcommand1;
            try
            {
                sqlcommand = new SqlCommand("dbo.GetLastID", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@ans", SqlDbType.Int).Direction = ParameterDirection.Output;
                sqlcommand.ExecuteNonQuery();
                ans = Convert.ToInt32(sqlcommand.Parameters["@ans"].Value);
                if (ans > 1)
                {
                    ans = ans + 1;
                }
                sqlcommand1 = new SqlCommand("dbo.SignupDatabase", sqlconn);
                sqlcommand1.CommandType = CommandType.StoredProcedure;
                sqlcommand1.Parameters.Add("@id", SqlDbType.VarChar, 20);
                sqlcommand1.Parameters.Add("@name", SqlDbType.VarChar, 40);
                sqlcommand1.Parameters.Add("@contact", SqlDbType.VarChar, 11);
                sqlcommand1.Parameters.Add("@adrs", SqlDbType.VarChar, 40);
                sqlcommand1.Parameters.Add("@desig", SqlDbType.VarChar, 40);
                sqlcommand1.Parameters.Add("@sal", SqlDbType.Int);
                sqlcommand1.Parameters.Add("@Email", SqlDbType.VarChar, 25);
                sqlcommand1.Parameters.Add("@usrn", SqlDbType.VarChar, 25);
                sqlcommand1.Parameters.Add("@pass", SqlDbType.VarChar, 25);
                sqlcommand1.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;
                sqlcommand1.Parameters["@id"].Value = Convert.ToString(ans);
                sqlcommand1.Parameters["@name"].Value = Name;
                sqlcommand1.Parameters["@contact"].Value = Contact;
                sqlcommand1.Parameters["@adrs"].Value = House;
                sqlcommand1.Parameters["@desig"].Value = Designation;
                sqlcommand1.Parameters["@sal"].Value = Salary;
                sqlcommand1.Parameters["@Email"].Value = Email;
                sqlcommand1.Parameters["@usrn"].Value = UserN;
                sqlcommand1.Parameters["@pass"].Value = Pass;
                sqlcommand1.ExecuteNonQuery();
                Fans = Convert.ToInt32(sqlcommand1.Parameters["@output"].Value);
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }

            finally
            {
                sqlconn.Close();
            }
            return Fans;
        }
        public int customer(string id, string name, string mid, string quantity, string amount)
        {
            DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            try
            {
                sqlcommand = new SqlCommand("dbo.customer_database", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@id", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@name", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@mid", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@quantity", SqlDbType.Float);
                sqlcommand.Parameters.Add("@amount", SqlDbType.Float);
                sqlcommand.Parameters["@id"].Value = id;
                sqlcommand.Parameters["@name"].Value = name;
                sqlcommand.Parameters["@mid"].Value = mid;
                float c, p;
                c = float.Parse(quantity);
                p = float.Parse(amount);
                sqlcommand.Parameters["@quantity"].Value = c;
                sqlcommand.Parameters["@amount"].Value = p;
                sqlcommand.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
            return 0;
        }
        public int Bill(string id) { 
         DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            try
            {
                sqlcommand = new SqlCommand("dbo.CustomerBill", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@id", SqlDbType.VarChar, 20);
                sqlcommand.Parameters["@id"].Value = id;
                sqlcommand.ExecuteNonQuery();



            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
            return 0;
        }
        public int repetedcustomer(string id) {
 
             DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            try
            {
                sqlcommand = new SqlCommand("dbo.repetitionCustomercontrol", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@id", SqlDbType.VarChar, 20);
                sqlcommand.Parameters["@id"].Value = id;
                sqlcommand.ExecuteNonQuery();



            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }

            return 0;
        }
        public DataTable showbill()
        {
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlDataAdapter datatable = new SqlDataAdapter();
            DataTable searchresult = new DataTable();
            try
            {
                datatable = new SqlDataAdapter("select * from Bill", sqlconn);
                datatable.Fill(searchresult);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;
            }
            finally
            {
                sqlconn.Close();
            }
            return searchresult;
        }
        public int dealer(string PurchaseID, string DealerID, string Medicineid, string PurchaseDate, string Quantity, string price, string Totalprice)
        {
            DataSet ds = new DataSet();
            SqlConnection sqlconn = new SqlConnection(connString);
            sqlconn.Open();
            SqlCommand sqlcommand;
            try
            {
                sqlcommand = new SqlCommand("dbo.Purchaseoutput", sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@PurchaseID", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@DealerID", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@Medicineid", SqlDbType.VarChar, 20);
                sqlcommand.Parameters.Add("@PurchaseDate", SqlDbType.VarChar,20);
                sqlcommand.Parameters.Add("@Quantity", SqlDbType.Float);
                sqlcommand.Parameters.Add("@price", SqlDbType.Float);
                sqlcommand.Parameters.Add("@Totalprice", SqlDbType.Float);
                sqlcommand.Parameters["@PurchaseID"].Value = PurchaseID;
                sqlcommand.Parameters["@DealerID"].Value = DealerID;
                sqlcommand.Parameters["@Medicineid"].Value = Medicineid;
                sqlcommand.Parameters["@PurchaseDate"].Value = PurchaseDate;
                float c, p,d;
                c = float.Parse(Quantity);
                p = float.Parse(price);
                d = float.Parse(Totalprice);
                sqlcommand.Parameters["@Quantity"].Value = c;
                sqlcommand.Parameters["@price"].Value = p;
                sqlcommand.Parameters["@Totalprice"].Value = d;
                sqlcommand.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
            return 0;
        }
        public DataTable showdealerbill()
       {
           SqlConnection sqlconn = new SqlConnection(connString);
           sqlconn.Open();
           SqlDataAdapter datatable = new SqlDataAdapter();
           DataTable searchresult = new DataTable();
           try
           {
               datatable = new SqlDataAdapter("select * from DealerBill", sqlconn);
               datatable.Fill(searchresult);
           }
           catch (SqlException ex)
           {
               Console.WriteLine("SQL Error" + ex.Message.ToString());
               return null;
           }
           finally
           {
               sqlconn.Close();
           }
           return searchresult;
       }
    }
}
