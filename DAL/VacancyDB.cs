using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class VacancyDB
    {
        public bool AddVacancy(VacancyBO vac)
        {
            Boolean returntype = false;
            string ConnectionString = "Data Source=ingnrilpsql02;" +
 "Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
 "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_AddVacancy";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@NoOfPositions", vac.NoOfPositions);
            command.Parameters.AddWithValue("@Skills", vac.Skills);
            command.Parameters.AddWithValue("@Experience", vac.Experience);
            command.Parameters.AddWithValue("@Location", vac.Location);
            command.Parameters.AddWithValue("@BusinessDomain", vac.BusinessDomain);
            command.Parameters.AddWithValue("@RequiredByDate", vac.RequiredByDate);
            command.Parameters.AddWithValue("@RequestStatus", vac.RequestStatus);
            command.Parameters.AddWithValue("@VacancyRequestID", vac.VacancyRequestID);
           //command.Parameters.AddWithValue("@RecruitmentRequestID", null);
            command.Parameters.AddWithValue("@ApprovalStatus", vac.ApprovalStatus);
            command.Parameters.AddWithValue("@EmployeeID", vac.EmployeeID);




            SqlParameter outputparameter = new SqlParameter();
            outputparameter.ParameterName = "@VacancyID";
            outputparameter.SqlDbType = System.Data.SqlDbType.Int;
            outputparameter.Direction = System.Data.ParameterDirection.Output;

            command.Parameters.Add(outputparameter);









            ////Denotes that id is a output parameter 
            //command.Parameters["@id"].Direction=ParameterDirection.Output; 
            ////Used to execute command 
            try
            {
                connection.Open();
                int rowAffected = command.ExecuteNonQuery();
                ////Connection should be closed after use. Its done using close method 

                // Used to return the value of output parameter 
                if (rowAffected > 0)
                {
                    returntype = true;
                    return Convert.ToBoolean(command.Parameters["@VacancyID"].Value);

                }
                else
                {
                    //returntype = false;
                    return Convert.ToBoolean(rowAffected);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                returntype = false;
            }
            finally
            {
                command.Dispose();
                connection.Dispose();
                connection.Close();
            }
            return returntype;
        }



        public DataTable GetVacancy(int empid)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
 "Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
 "Password=a36;";
            DataTable dt = new DataTable();

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 

            //SqlCommand command = new SqlCommand("sp_GetVacancyRequest",connection);
            //command.Parameters.AddWithValue("@VacancyRequestID", 1);
            ////Set command type as stored procedure 
            //command.CommandType = CommandType.StoredProcedure;

            //Command text is stored procedure name if command type is stored 

            //Used to relate command object to connection 

            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_GetVacancyRequest";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@EmployeeID", empid);
            try
            {
                connection.Open();
                //  command.ExecuteNonQuery();
                SqlDataReader reader = command.ExecuteReader();
                dt.Load(reader);
                connection.Close();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                command.Dispose();
                connection.Close();
                connection.Dispose();
            }

            return dt;

        }
        public int DeleteVacancy(int id)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
            "Initial Catalog=AHD13_AMS60;" +
           "User id=a36;" +
            "Password=a36;";

            int reqid = 0;
            SqlConnection connection = new SqlConnection(ConnectionString);
            try
            {

                connection.Open();
                SqlCommand command2 = new SqlCommand();


                command2.CommandType = CommandType.StoredProcedure;

                command2.CommandText = "sp_GetVacancyReqID";

                command2.Connection = connection;

                command2.Parameters.AddWithValue("@VacancyID", id);


                SqlDataReader sdr = command2.ExecuteReader();
                while (sdr.Read())
                {
                    reqid = Convert.ToInt32(sdr["VacancyRequestID"].ToString());
                }
                sdr.Close();
                connection.Close();


                SqlConnection conn = new SqlConnection(ConnectionString);
                SqlCommand command = new SqlCommand();

                conn.Open();
                //Set command type as stored procedure 
                command.CommandType = CommandType.StoredProcedure;
                //Command text is stored procedure name if command type is stored procedure 
                command.CommandText = "sp_DltVacancy";
                //Used to relate command object to connection 
                command.Connection = conn;
                //Used to pass parameter to procedure 
                command.Parameters.AddWithValue("@VacancyID", id);

                //Used to execute command 
                int rowAffected = command.ExecuteNonQuery();
                conn.Close();



                //return (rowAffected);

                SqlConnection connection1 = new SqlConnection(ConnectionString);
                //Connection is opened using Open method 
                connection1.Open();
                //create command object 
                SqlCommand command1 = new SqlCommand();

                //Set command type as stored procedure 
                command1.CommandType = CommandType.StoredProcedure;
                //Command text is stored procedure name if command type is stored procedure 
                command1.CommandText = "sp_DltVacancyRequest";
                //Used to relate command object to connection 
                command1.Connection = connection1;
                //Used to pass parameter to procedure 
                command1.Parameters.AddWithValue("@VacancyRequestID", reqid);

                //Used to execute command 
                int rowAffected1 = command1.ExecuteNonQuery();
                connection1.Close();
                return (rowAffected1);
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {


            }

            return 0;



        }
        public int UpdateVacancy(VacancyBO upbo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_UpdateVacancy";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@VacancyID", upbo.VacancyID);
            command.Parameters.AddWithValue("@NoOfPositions", upbo.NoOfPositions);
            command.Parameters.AddWithValue("@Skills", upbo.Skills);
            command.Parameters.AddWithValue("@Experience", upbo.Experience);
            command.Parameters.AddWithValue("@Location", upbo.Location);
            command.Parameters.AddWithValue("@BusinessDomain", upbo.BusinessDomain);
            command.Parameters.AddWithValue("@RequiredByDate", upbo.RequiredByDate);







            //SqlParameter outputparameter = new SqlParameter();
            //outputparameter.ParameterName = "@VacancyID";
            //outputparameter.SqlDbType = System.Data.SqlDbType.Int;
            //outputparameter.Direction = System.Data.ParameterDirection.Output;

            //command.Parameters.Add(outputparameter);









            ////Denotes that id is a output parameter 
            //command.Parameters["@id"].Direction=ParameterDirection.Output; 
            ////Used to execute command 
            try
            {
                connection.Open();
                int rowAffected = command.ExecuteNonQuery();
                connection.Close();
                ////Connection should be closed after use. Its done using close method 

                // Used to return the value of output parameter 
                if (rowAffected > 0)
                {

                    return 1;

                }
                else
                {
                    //returntype = false;
                    return rowAffected;
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
        public int ApproveStatus(int eid, int vid)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
"Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
"Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_UpdateStatus";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@VacancyID", vid);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();

                if (rowsAffected > 0) { return 1; }
                else return rowsAffected;


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

        public DataTable GetVacancyList(int eid)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
 "Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
 "Password=a36;";
            DataTable dt = new DataTable();

            SqlConnection connection = new SqlConnection(ConnectionString);
            

            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_ApproveVacancy";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@EmployeeID", eid);
            try
            {
                connection.Open();
                //  command.ExecuteNonQuery();
                SqlDataReader reader = command.ExecuteReader();
                dt.Load(reader);
                connection.Close();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                command.Dispose();
                connection.Close();
                connection.Dispose();
            }

            return dt;
 
        }

        public int UpdateRecInVacancy(VacancyBO vbo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
           "Initial Catalog=AHD13_AMS60;" +
           "User id=a36;" +
           "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_UpdateRecID";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@RecruitmentRequestID", vbo.RecruitmentRequestID);
            command.Parameters.AddWithValue("@VacancyID", vbo.VacancyID);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();

                if (rowsAffected > 0) { return 1; }
                else return rowsAffected;


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
        public DataTable GetAllApprovedVacancy()
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
"Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
"Password=a36;";
            DataTable dt = new DataTable();

            SqlConnection connection = new SqlConnection(ConnectionString);
            

            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_GetAllApprovedVacancy";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            
            try
            {
                connection.Open();
                //  command.ExecuteNonQuery();
                SqlDataReader reader = command.ExecuteReader();
                dt.Load(reader);
                connection.Close();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                command.Dispose();
                connection.Close();
                connection.Dispose();
            }

            return dt;
 
        }
        public DataTable DisplayVacancyByRecID(VacancyBO vbo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
 "Initial Catalog=AHD13_AMS60;" +
"User id=a36;" +
 "Password=a36;";
            DataTable dt = new DataTable();

            SqlConnection connection = new SqlConnection(ConnectionString);


            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_GetRecruitmentRequestByRecID";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@RecruitmentRequestID", vbo.RecruitmentRequestID);
            try
            {
                connection.Open();
                //  command.ExecuteNonQuery();
                SqlDataReader reader = command.ExecuteReader();
                dt.Load(reader);
                connection.Close();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                command.Dispose();
                connection.Close();
                connection.Dispose();
            }

            return dt;

        }
        public int DeleteRecInVacancy(VacancyBO vbo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" +
                      "Initial Catalog=AHD13_AMS60;" +
                      "User id=a36;" +
                      "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_Group4DeleteRecFromVacancy";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@VacancyID", vbo.VacancyID);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();

                if (rowsAffected > 0) { return 1; }
                else return rowsAffected;


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
    }

}

