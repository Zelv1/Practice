using EFMTest.Properties;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFMTest
{
    internal class Program
    {
        static void Main(string[] args)
        {
            using (IDbConnection connection = new SqlConnection(Settings.Default.DbConnect))
            {
                IDbCommand command = new SqlCommand("SELECT * FROM PersonAndBook");
                command.Connection = connection;

                connection.Open();

                IDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Console.WriteLine("ID_Person: {0}\tID_Book: {1} ", reader.GetValue(0).ToString(), reader.GetValue(1).ToString());
                }
            }
            Console.ReadLine();
        }
    }
}
