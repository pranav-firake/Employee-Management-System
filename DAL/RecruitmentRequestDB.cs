using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class RecruitmentRequestDB
    {
        public int AddRecruitmentRequest(RecruitmentRequestBO rbo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_Group4AddRecruitmentRequest";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@PlacementConsultantID", rbo.pcid);
            command.Parameters.AddWithValue("@Requested_Date", rbo.Requested_Date);
           

            SqlParameter outputparameter = new SqlParameter();
            outputparameter.ParameterName = "@RecruitmentRequestID";
            outputparameter.SqlDbType = System.Data.SqlDbType.Int;
            outputparameter.Direction = System.Data.ParameterDirection.Output;
            command.Parameters.Add(outputparameter);
            try
            {
                connection.Open();
                int rowAffected = command.ExecuteNonQuery();
                if (rowAffected > 0)
                {

                    return Convert.ToInt32(command.Parameters["@RecruitmentRequestID"].Value);

                }
                else
                {
                    //returntype = false;
                    return 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);

            }
            finally
            {
                command.Dispose();
                connection.Dispose();
                connection.Close();
            }
            return 0;
  }
        public List<string> GetDDLRD() 
        {
            List<string> lstRD = new List<string>();
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4DDLGetRD";
                //Open Connection
                conn.Open();
                //SQLDataReader for Reading the Values
                SqlDataReader sdr = cmd.ExecuteReader();
                //Read the Values fetched.
                while (sdr.Read())
                {
                    string date = Convert.ToDateTime(sdr["Requested_Date"]).ToShortDateString();

                    //Create Object of Department with the details


                    //Add the Department object to the List
                    lstRD.Add(date);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department
            return lstRD;
        }
        public DataTable GetRecReqDetails()
        {
            DataTable dt = new DataTable();
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4GetRecReqDetails";
                //Open Connection
                conn.Open();
                //SQLDataReader for Reading the Values
                SqlDataReader sdr = cmd.ExecuteReader();
                //Read the Values fetched.
                dt.Load(sdr);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department
            return dt;
 
        }
        public DataTable GetRecReqDetailsByPC(RecruitmentRequestBO bo)
        {
            DataTable dt = new DataTable();
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4GetRecReqDetailsOnPC";
                cmd.Parameters.AddWithValue("@PlacementConsultantID", bo.pcid);
                //Open Connection
                conn.Open();
                //SQLDataReader for Reading the Values
                SqlDataReader sdr = cmd.ExecuteReader();
                //Read the Values fetched.
                dt.Load(sdr);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department
            return dt;

        }
        public DataTable GetRecReqDetailsByRD(RecruitmentRequestBO bo)
        {
            DataTable dt = new DataTable();
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4GetRecReqDetailsOnRD";
                cmd.Parameters.AddWithValue("@Requested_Date", bo.Requested_Date);
                //Open Connection
                conn.Open();
                //SQLDataReader for Reading the Values
                SqlDataReader sdr = cmd.ExecuteReader();
                //Read the Values fetched.
                dt.Load(sdr);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department
            return dt;

        }
        public int DeleteRecReq(RecruitmentRequestBO bo)
        {
            
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4DeleteRecReq";
                cmd.Parameters.AddWithValue("@RecruitmentRequestID", bo.recid);
                //Open Connection
                conn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department

 
        }
        public List<int> GetDDLRec()
        {
            List<int> lstPC = new List<int>();
            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4DDLGetRec";
                //Open Connection
                conn.Open();
                //SQLDataReader for Reading the Values
                SqlDataReader sdr = cmd.ExecuteReader();
                //Read the Values fetched.
                while (sdr.Read())
                {
                    int id = Convert.ToInt32(sdr["RecruitmentRequestID"]);

                    //Create Object of Department with the details


                    //Add the Department object to the List
                    lstPC.Add(id);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department
            return lstPC;
        }
        public int CheckPC(RecruitmentRequestBO rbo)
        {

            //Create Connection object
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";
                //Query Command details
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_Group4CheckPC";
                cmd.Parameters.AddWithValue("@PlacementConsultantID", rbo.pcid);
                //Open Connection
                conn.Open();
                int RecAssociated = Convert.ToInt32(cmd.ExecuteScalar());
                return RecAssociated;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    //Close the Connection
                    conn.Close();
                }
            }
            //return the list of Department

        }

    }
}
