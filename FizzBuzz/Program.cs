using System.Data;
using System.Data.SqlClient;

string sOutput = string.Empty;
SqlConnection? _connection = null;

using (_connection = new SqlConnection(@"Server=(localdb)\MSSQLLocalDB;Database=FizzBuzz;Trusted_Connection=True;"))
{
    _connection.Open();
    for (int i = 1; i <= 100; i++)
    {
        if (i % 3 == 0 && i % 5 == 0)
        {
            sOutput = "FizzBuzz";
        }
        else if (i % 3 == 0)
        {
            sOutput = "Fizz";
        }
        else if (i % 5 == 0)
        {
            sOutput = "Buzz";
        }
        else
        {
            sOutput = i.ToString();
        }
        InsertRecord(sOutput);
        Console.WriteLine(sOutput);
    }
}
Console.ReadKey();


void InsertRecord(string sResult)
{
        using (SqlCommand command = new SqlCommand("FizzOutputInsert", _connection))
        {
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Results", sResult);
            command.ExecuteNonQuery();
        }
}
