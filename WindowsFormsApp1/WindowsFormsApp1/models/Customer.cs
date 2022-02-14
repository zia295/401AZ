using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp1.models
{
    internal class Customer : person
    {
        internal string phoneNumber;

        public int customerID { get; set; }
        public string customerDOB { get; set; }

        internal static void Add(object p)
        {
            throw new NotImplementedException();
        }
    }
}
