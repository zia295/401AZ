using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormsApp1.models;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        private string firstName;

        List<Customer> = new List<Customer>() {
            new Customer() { firstName = "Zia", phoneNumber = "07928225687" },
            new Customer() { firstName = "Dan", phoneNumber = "07928225647" },
            new Customer() { firstName = "Pan", phoneNumber = "07928225557" },
        }

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e, object customers)
        {
            DataManager manager = new DataManager();
        DGV. DataSource = manager.toDataTable(customers);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
