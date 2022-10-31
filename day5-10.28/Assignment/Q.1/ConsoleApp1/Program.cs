using System.Data.SqlClient; //1
namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string connection = "Data Source=INLPF2RXRDD\\MSSQLSERVER1;Initial Catalog=day4;trusted_connection=true";
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                int i = 0;

                while (i < 5)
                {
                    SqlCommand cmd = new SqlCommand("Passport", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    Console.WriteLine("Enter the Passport Number:");
                    long Passport_no = Convert.ToInt64(Console.ReadLine());

                    Console.WriteLine("Enter the Candidate Name:");
                    string Candidate_name = Console.ReadLine();

                    Console.WriteLine("Enter The Passport Expiry Date:");
                    string exp_date = Console.ReadLine();

                    Console.WriteLine("Enter the Years of validity:");
                    int val_years = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Enter the Applied Through Channel:");
                    string channel_app = Console.ReadLine();


                    cmd.Parameters.Add("@p_no", System.Data.SqlDbType.BigInt).Value = Passport_no;
                    cmd.Parameters.Add("@c_name", System.Data.SqlDbType.VarChar).Value = Candidate_name;
                    cmd.Parameters.Add("@p_exp_date", System.Data.SqlDbType.Date).Value = exp_date;
                    cmd.Parameters.Add("@years_val", System.Data.SqlDbType.Int).Value = val_years;
                    cmd.Parameters.Add("@a_thr_chan", System.Data.SqlDbType.VarChar).Value = channel_app;

                    cmd.ExecuteNonQuery();
                    Console.WriteLine("Data Pushing Successfully!!");



                    i++;
                }
                conn.Close();
            }
            catch (SqlException exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("Sql Related problem");
            }
            catch (Exception exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("C-Sharp code related problem");
            }
            Console.ReadKey();
        }
    }
}