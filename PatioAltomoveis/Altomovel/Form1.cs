using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Altomovel
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void panel4_Click(object sender, EventArgs e)
        {
            var tela = new Area_1();
            tela.ShowDialog();
        }

        private void panel6_Click(object sender, EventArgs e)
        {
            var tela = new Area_2();
            tela.ShowDialog();
        }

        private void panel3_Click(object sender, EventArgs e)
        {
            var tela = new Area_3();
            tela.ShowDialog();
        }

        private void panel5_Click(object sender, EventArgs e)
        {
            var tela = new Area_4();
            tela.ShowDialog();
        }

        private void panel2_Click(object sender, EventArgs e)
        {
            var tela = new Area_5();
            tela.ShowDialog();
        }

        private void panel10_Click(object sender, EventArgs e)
        {
            var tela = new Area_6();
            tela.ShowDialog();
        }

        private void panel7_Click(object sender, EventArgs e)
        {
            var tela = new Area_7();
            tela.ShowDialog();
        }

        private void panel8_Click(object sender, EventArgs e)
        {
            var tela = new Area_8();
            tela.ShowDialog();
        }

        private void panel9_Click(object sender, EventArgs e)
        {
            var tela = new Area_9();
            tela.ShowDialog();
        }

        private void panel1_Click(object sender, EventArgs e)
        {
            var tela = new Area_10();
            tela.ShowDialog();
        }

        private void label12_Click(object sender, EventArgs e)
        {
            var tela = new Area_11();
            tela.ShowDialog();
        }
    }
}
