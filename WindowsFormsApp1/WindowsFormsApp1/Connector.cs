using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp1.models;

namespace WindowsFormsApp1
{
    internal class Connector
    {
        string connString = "Server=myserver;User ID=admin;Password=mypass;Database=mydatabase";
        public async List<Customer> getCustomers()
        {
            using (var conn = new MySqlConnection(connString))
           {
                await conn.OpenAsync();

                // Retrieve all rows
                using (var cmd = new MySqlCommand("CALL sp_getCustomers()",conn))
                using (var reader = await cmd.ExecuteReaderAsync())
                    while (await reader.Readasync()){
                        Customer.Add(new )
    }
}
