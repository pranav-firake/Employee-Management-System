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
  public class PlacementConsultantDB
    {
      public int AddPlacementConsultant(PlacementConsultantBO bo)
      {

          string ConnectionString = "Data Source=ingnrilpsql02;" +"Initial Catalog=AHD13_AMS60;" +"User id=a36;" +"Password=a36;";

          SqlConnection connection = new SqlConnection(ConnectionString);
          //Connection is opened using Open method 

          //create command object 
          SqlCommand command = new SqlCommand();
          //Set command type as stored procedure 
          command.CommandType = CommandType.StoredProcedure;
          //Command text is stored procedure name if command type is stored 

          command.CommandText = "sp_Group4AddPlacementConsultant";
          //Used to relate command object to connection 
          command.Connection = connection;
          //Used to pass parameter to procedure 
          command.Parameters.AddWithValue("@PlacementConsultantName", bo.pcname);
          command.Parameters.AddWithValue("@PlacementConsultantPassword", bo.pwd);
          command.Parameters.AddWithValue("@Location", bo.loc);
          command.Parameters.AddWithValue("@EmployeeID", bo.HRID);
          
          SqlParameter outputparameter = new SqlParameter();
          outputparameter.ParameterName = "@PlacementConsultantID";
          outputparameter.SqlDbType = System.Data.SqlDbType.Int;
          outputparameter.Direction = System.Data.ParameterDirection.Output;
          command.Parameters.Add(outputparameter);
          try
          {
              connection.Open();
              int rowAffected = command.ExecuteNonQuery();
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
      public DataTable GetPC(int empid)
      {
          string ConnectionString = "Data Source=ingnrilpsql02;" +"Initial Catalog=AHD13_AMS60;" +"User id=a36;" +"Password=a36;";
          DataTable dt = new DataTable();

          SqlConnection connection = new SqlConnection(ConnectionString);
           

          SqlCommand command = new SqlCommand();
          //Set command type as stored procedure 
          command.CommandType = CommandType.StoredProcedure;
          //Command text is stored procedure name if command type is stored 

          command.CommandText = "sp_Group4GetPC";
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
              Console.WriteLine(ex.Message);
          }
          finally
          {
              command.Dispose();
              connection.Close();
              connection.Dispose();
          }

          return dt;

      }
      public List<int> GetDDLPC()
      {
          List<int> lstPC = new List<int>();
        //Create Connection object
SqlConnection conn = null;
try
{
conn = new SqlConnection();
conn.ConnectionString = "Data Source=ingnrilpsql02;" +"Initial Catalog=AHD13_AMS60;" +"User id=a36;" +"Password=a36;";
//Query Command details
SqlCommand cmd = new SqlCommand();
cmd.Connection = conn;
cmd.CommandType = CommandType.StoredProcedure;
cmd.CommandText = "sp_Group4DDLGetPC";
//Open Connection
conn.Open();
//SQLDataReader for Reading the Values
SqlDataReader sdr = cmd.ExecuteReader();
//Read the Values fetched.
while (sdr.Read())
{
    int id = Convert.ToInt32(sdr["PlacementConsultantID"]);
    
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
      public int UpdatePC(PlacementConsultantBO bo)
      {
          string ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";

          SqlConnection connection = new SqlConnection(ConnectionString);
          //Connection is opened using Open method 

          //create command object 
          SqlCommand command = new SqlCommand();
          //Set command type as stored procedure 
          command.CommandType = CommandType.StoredProcedure;
          //Command text is stored procedure name if command type is stored 

          command.CommandText = "sp_Group4UpdatePC";
          //Used to relate command object to connection 
          command.Connection = connection;
          //Used to pass parameter to procedure 
          command.Parameters.AddWithValue("@PlacementConsultantID", bo.pcid);
          command.Parameters.AddWithValue("@PlacementConsultantName", bo.pcname);
          command.Parameters.AddWithValue("@PlacementConsultantPassword", bo.pwd);
          command.Parameters.AddWithValue("@Location", bo.loc);

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
      public int DeletePC(int id)
      {
          string ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";

          int reqid = 0;
          SqlConnection connection = new SqlConnection(ConnectionString);
          try
          {

              connection.Open();
              SqlCommand command2 = new SqlCommand();


              command2.CommandType = CommandType.StoredProcedure;

              command2.CommandText = "sp_Group4DltPC";

              command2.Connection = connection;

              command2.Parameters.AddWithValue("@PlacementConsultantID", id);


              command2.ExecuteNonQuery();
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
    }
}
