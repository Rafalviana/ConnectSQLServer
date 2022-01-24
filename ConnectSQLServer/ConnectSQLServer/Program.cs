using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ConnectSQLServer
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "data source=DESKTOP-DQI9A2K\\SQLEXPRESS;Database=PeopleManager;trusted_connection=true";

            using(SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using(SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT * FROM ListName";

                    SqlDataReader dr = cmd.ExecuteReader();

                    while(dr.Read())
                    {
                        string firstName = dr["FirstName"].ToString();
                        string lastName = dr["LastName"].ToString();

                        Console.WriteLine(firstName + " " + lastName);
                    }
                    dr.Close();
                }
                Console.ReadKey();
            }
        }
    }
}
