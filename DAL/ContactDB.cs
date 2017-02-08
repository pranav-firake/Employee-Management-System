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
    public class ContactDB
    {
        public int AddContactUS(ContactBO bo)
        {
            string ConnectionString = "Data Source=ingnrilpsql02;" + "Initial Catalog=AHD13_AMS60;" + "User id=a36;" + "Password=a36;";

            SqlConnection connection = new SqlConnection(ConnectionString);
            //Connection is opened using Open method 

            //create command object 
            SqlCommand command = new SqlCommand();
            //Set command type as stored procedure 
            command.CommandType = CommandType.StoredProcedure;
            //Command text is stored procedure name if command type is stored 

            command.CommandText = "sp_Group4EnterContactUs";
            //Used to relate command object to connection 
            command.Connection = connection;
            //Used to pass parameter to procedure 
            command.Parameters.AddWithValue("@name", bo.name);
            command.Parameters.AddWithValue("@email", bo.email);
            command.Parameters.AddWithValue("@msg", bo.msg);

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
    }
}
