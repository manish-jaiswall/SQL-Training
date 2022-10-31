using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace SQL_CONNECTION
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /* string ConnectionString = "Data Source=INLPF2RXRDD\\MSSQLSERVER1;Initial Catalog=master;trusted_connection=true";
             SqlConnection sqlCon = new SqlConnection(ConnectionString);
             Console.WriteLine("Enter the City");
             string address=Console.ReadLine();
             SqlCommand sql1 = new SqlCommand("Select Customer_id,Customer_name,Customer_address from CUSTOMER where Customer_address =@address " ,sqlCon);

             sql1.Parameters.Add("@address",System.Data.SqlDbType.VarChar).Value=address ;
             sqlCon.Open();
             SqlDataReader reader = sql1.ExecuteReader();
             Console.WriteLine("Customerid | Customer Name | Customer Address");
             while (reader.Read())
             {
                 Console.Write(reader[0]+ "            |");
                 Console.Write(reader[1]+ "            |");
                 Console.Write(reader[2]+"                  |");

                 Console.WriteLine();



                 //Console.WriteLine(reader.Read());

             }
             reader.Close();
             sqlCon.Close(); */


            string ConnectionString = "Data Source=INLPF2RXRDD\\MSSQLSERVER1;Initial Catalog=day4;trusted_connection=true";
            SqlConnection sqlCon = new SqlConnection(ConnectionString);
           
           

            Console.WriteLine("Enter the Name");
            string name =Console.ReadLine();

            Console.WriteLine("Enter the Telephone Number");
            long tel_number = Convert.ToInt64(Console.ReadLine());

            Console.WriteLine("Enter the city");
            string city=Console.ReadLine();
            sqlCon.Open();
            SqlCommand sql1 = new SqlCommand("ptel" , sqlCon);
            sql1.CommandType = System.Data.CommandType.StoredProcedure;

            sql1.Parameters.AddWithValue("@name", System.Data.SqlDbType.VarChar).Value = name;
            sql1.Parameters.AddWithValue("@tel_num", System.Data.SqlDbType.BigInt).Value = tel_number;
            sql1.Parameters.AddWithValue("@city", System.Data.SqlDbType.VarChar).Value = city;

            /*sql1.Parameters.Add("@name",System.Data.SqlDbType.VarChar).Value=name;
            sql1.Parameters.Add("@tel_number", System.Data.SqlDbType.BigInt).Value = tel_number;
            sql1.Parameters.Add("@city", System.Data.SqlDbType.VarChar).Value = city;*/
            
            sql1.ExecuteNonQuery();
            sqlCon.Close();




        }
    }
}