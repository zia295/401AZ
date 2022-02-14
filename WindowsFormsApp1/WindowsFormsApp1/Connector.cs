using MySqlConnector;
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
        public async List<Customer> getCustomer()
        {
            using (var conn = new MySqlConnector.MySqlConnection(connString)) 
           {
                await conn.OpenAsync();

                // Retrieve all rows
                using (var cmd = new MySqlCommand("CALL sp_getCustomers()",conn))
                using (var reader = await cmd.ExecuteReaderAsync())
                    while (await reader.ReadAsync()){
                        Customer.Add(new);
    }

