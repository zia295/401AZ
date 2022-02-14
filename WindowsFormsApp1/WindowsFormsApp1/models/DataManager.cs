using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp1.models;

namespace WindowsFormsApp1.models
{
    public class DataManager
    {
        List<Customer> customers = new List<Customer>() {
            new Customer() { firstName = "Zia", phoneNumber = "07928225687" },
            new Customer() { firstName = "Dan", phoneNumber = "07928225647" },
            new Customer() { firstName = "Pan", phoneNumber = "07928225557" },
        };

        public static int ZH { get; private set; }

        public DataTable toDataTable<T> (List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            PropertyInfo[] props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in props)
            {
                dataTable.Columns.Add(prop.Name);
            }
            foreach (T item in items)
            {
                var values = new object[props.Length];
                for (int i = 0; i < props.Length; i++)
                {
                    values[i] = props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            return dataTable;
        }

        internal void toDataTable(object customers)
        {
            throw new NotImplementedException();
        }
    }
}
