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
   public class EmployeeDB
    {
       public int VerifyAuth(EmployeeBO obj)
       {
             int returntype=0;
             int flag = 0;
            string ConnectionString = "Data Source=ingnrilpsql02;"+"Initial Catalog=AHD13_AMS60;"+"User id=a36;"+"Password=a36;"; 
 
            SqlConnection connection = new SqlConnection(ConnectionString); 
             //Connection is opened using Open method 

                 //create command object 
                SqlCommand command = new SqlCommand();
                 //Set command type as stored procedure 
                  command.CommandType = CommandType.StoredProcedure;
                 //Command text is stored procedure name if command type is stored 
                  command.CommandText = "sp_GetPassword_Group4";
                 //Used to relate command object to connection 
                 command.Connection = connection;
                    //Used to pass parameter to procedure 
   try
     {
         connection.Open();
         SqlDataReader reader = command.ExecuteReader();
         while (reader.Read())
         {
             string uname = reader["EmployeeID"].ToString();
             string password = reader["Password"].ToString();
             string design = reader["Designation"].ToString();

             string username = obj.Username;
             string pword = obj.Password;

             if (uname.Equals(username) && password.Equals(pword))
             {
                 flag = 1;
                 if (design.Equals("HR")) { return 3; }
                 else if (design.Equals("UH")) { return 2; }
                 else if (design.Equals("Employee")) { return 1; }
               }
             
         }
         if (flag == 0)
         {
             return 0;
         }





 }
 catch(SqlException ex)
 {
   Console.WriteLine(ex.Message);
   returntype = 0;
 }
 finally
 {
     command.Dispose();
     connection.Dispose();
     connection.Close();
 }
    return returntype;
        }
       
    public string GetEmpname(EmployeeBO obj)
       {
             int returntype=0;
             int flag = 0;
            string ConnectionString = "Data Source=ingnrilpsql02;"+"Initial Catalog=AHD13_AMS60;"+"User id=a36;"+"Password=a36;"; 
 
            SqlConnection connection = new SqlConnection(ConnectionString); 
             //Connection is opened using Open method 

                 //create command object 
                SqlCommand command = new SqlCommand();
                 //Set command type as stored procedure 
                  command.CommandType = CommandType.StoredProcedure;
                 //Command text is stored procedure name if command type is stored 
                  command.CommandText = "sp_GetEmpName_Group4";
                  command.Parameters.AddWithValue("@EmployeeID", obj.Username);
                 //Used to relate command object to connection 
                 command.Connection = connection;
                    //Used to pass parameter to procedure 
   try
     {
         connection.Open();
         SqlDataReader reader = command.ExecuteReader();
         while (reader.Read())
         {
             string ename = reader["EmpoyeeName"].ToString();
             return ename;
         }





 }
 catch(SqlException ex)
 {
   Console.WriteLine(ex.Message);
   return "";
 }
 finally
 {
     command.Dispose();
     connection.Dispose();
     connection.Close();
 }
    return "" ;
        }
       }
    }

