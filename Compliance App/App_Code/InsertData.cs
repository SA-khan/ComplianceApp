using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Configuration;


namespace Compliance_App.App_Code
{
    public class InsertData
    {
        string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        #region InsertInvertorData
        public int InsertInvertorData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertUnitHoldersData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at InsertInvertorData: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region EUConsolidatedFinancialSanctions
        public int InsertEUConsolidatedFinancialSanctionsData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertEUConsolidatedFinancialSanctionsData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at InsertEUConsolidatedFinancialSanctionsData: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region UploadFIAMostWantedCyberCrimeCircle

        public int InsertFIAMostWantedCyberCrimeCircleData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertFIAMostWantedCyberCrimeCircleData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at InsertFIAMostWantedCyberCrimeCircleData: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion


        #region FIAMostWantedHumanSmugglersAndTraffickers

        public int InsertFIAMostWantedHumanSmugglersAndTraffickersData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertFIAMostWantedHumanSmugglersAndTraffickersData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at FIAMostWantedHumanSmugglersAndTraffickers: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region FIAMostWantedTerrorists

        public int InsertFIAMostWantedTerroristsData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertFIAMostWantedTerroristsData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at FIAMostWantedTerrorists: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region UploadOFACSpeciallyDesignatedNationalsAndBlockedEntities

        public int InsertOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at FIAMostWantedTerrorists: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region UploadProscribedOrganisationNACTA

        public int InsertProscribedOrganisationNACTAData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertProscribed_Organisation_NACTAData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at InsertProscribedOrganisationNACTAData: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion

        #region UploadUNSecurityCouncilConsolidated

        public int InsertUNSecurityCouncilConsolidatedData(string firstName)
        {
            int result = -1;
            DataTable dt = new DataTable();
            SqlConnection con = OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "InsertUNSecurityCouncilConsolidatedListData";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@FIRSTNAME", SqlDbType.VarChar).Value = firstName;

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception Occured at InsertProscribedOrganisationNACTAData: " + ex.Message);
            }
            finally
            {
                ClosedConnection(con);
                cmd.Dispose();
            }

            return result;
        }

        #endregion


        #region SQLConnection

        private SqlConnection OpenConnection()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            return con;

        }

        private void ClosedConnection(SqlConnection con)
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
                try
                {
                    con.Dispose();
                }
                catch (Exception)
                {
                }
            }
        }

        #endregion

    }
}