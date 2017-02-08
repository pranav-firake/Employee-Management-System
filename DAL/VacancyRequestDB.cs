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
    public class VacancyRequestDB
    {
        public int AddVacancyRequest(VacancyRequestBO vbo)
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

            command.CommandText = "sp_AddVacancyRequest";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@EmployeeID", vbo.EmployeeID);
            command.Parameters.AddWithValue("@NoOfVacancies", vbo.NoOfVacancies);






            SqlParameter outputparameter = new SqlParameter();
            outputparameter.ParameterName = "@VacancyRequestID";
            outputparameter.SqlDbType = System.Data.SqlDbType.Int;
            outputparameter.Direction = System.Data.ParameterDirection.Output;

            command.Parameters.Add(outputparameter);









        
            try
            {
                connection.Open();
                int rowAffected = command.ExecuteNonQuery();
                ////Connection should be closed after use. Its done using close method 

                // Used to return the value of output parameter 
                if (rowAffected > 0)
                {
                  
                    return Int32.Parse(command.Parameters["@VacancyRequestID"].Value.ToString());

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
       
    }
}
