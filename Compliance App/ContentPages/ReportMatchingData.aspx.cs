using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Compliance_App.ContentPages
{
    public partial class ReportMatchingData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = getData();
            GridView1.DataBind();
        }

        private DataSet getData()
        {
            DataSet ds = new DataSet();
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                SqlCommand sqlComm = new SqlCommand("GetMatchedData", conn);
                sqlComm.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlComm;
                da.Fill(ds);
            }
            return ds;
        }

        private DataSet SetData(string FullName, string Email, string Phone)
        {
            
            DataSet ds = new DataSet();
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                conn.Open();
                SqlCommand sqlComm = new SqlCommand("MatchingRecord", conn);
                sqlComm.Parameters.AddWithValue("@UnitHolderData_FULLNAME", FullName);
                sqlComm.Parameters.AddWithValue("@UnitHolderData_EMAIL", Email);
                sqlComm.Parameters.AddWithValue("@UnitHolderData_PHONE", Phone);
                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.ExecuteNonQuery();
                //SqlDataAdapter da = new SqlDataAdapter();
                //da.SelectCommand = sqlComm;
                //da.Fill(ds);
                conn.Close();
            }
            return ds;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("TRUNCATE TABLE MatchedData", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            GridView1.DataSource = getData();
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            List<string> FullName = new List<string>();
            List<string> Email = new List<string>();
            List<string> Phone = new List<string>();

            string conString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("TRUNCATE TABLE MatchedData", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            using (SqlConnection con = new SqlConnection(conString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from UnitHoldersData", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        FullName.Add(reader[1].ToString());
                        Email.Add(reader[2].ToString());
                        Phone.Add(reader[3].ToString());
                    }
                }
                con.Close();
            }

            for (int i = 0; i < FullName.Count; i++){
                SetData(FullName[i], Email[i], Phone[i]);
            }

            GridView1.DataSource =  getData();
            GridView1.DataBind();
        }
    }
}