using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Prueba1
{
    public partial class Form1 : Form
    {
        Random rand;
        public Form1()
        {
            rand = new Random();
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            LimpiarCajas();
            int[] arreglo = new int[10];
            arreglo[0] = Convert.ToInt32(tbPrueba.Text);
            arreglo[1] = Convert.ToInt32(textBox1.Text);
            arreglo[2] = Convert.ToInt32(textBox2.Text);
            arreglo[3] = Convert.ToInt32(textBox3.Text);
            arreglo[4] = Convert.ToInt32(textBox4.Text);
            arreglo[5] = Convert.ToInt32(textBox5.Text);
            arreglo[6] = Convert.ToInt32(textBox6.Text);
            arreglo[7] = Convert.ToInt32(textBox7.Text);
            arreglo[8] = Convert.ToInt32(textBox8.Text);
            arreglo[9] = Convert.ToInt32(textBox9.Text);

            String cadena = ordenar(arreglo);
            prueba.Text = cadena;
        }
        public string ordenar(int[] arreglo)
        {
            string final = "";
            bool flip = false;
            for (int i = 0; i < arreglo.Length; i++)//.length obtiene la longitud del arreglo
            {
                for (int j = i + 1; j < arreglo.Length; j++)
                {
                    if (checkBox1.Checked)
                        flip = (arreglo[i] > arreglo[j]);

                    else
                        flip = (arreglo[i] < arreglo[j]);
                    if (flip)
                    {
                        int aux = arreglo[i];
                        arreglo[i] = arreglo[j];
                        arreglo[j] = aux;
                    }
                }
            }
            for (int i = 0; i < arreglo.Length; i++)
                final += arreglo[i] + " ";
            acomodarCajitas(arreglo);
            return final;
        }

        public void acomodarCajitas(int[] arreglo)
        {
            tbPrueba.Text = arreglo[0].ToString();
            textBox1.Text = arreglo[1].ToString();
            textBox2.Text = arreglo[2].ToString();
            textBox3.Text = arreglo[3].ToString();
            textBox4.Text = arreglo[4].ToString();
            textBox5.Text = arreglo[5].ToString();
            textBox6.Text = arreglo[6].ToString();
            textBox7.Text = arreglo[7].ToString();
            textBox8.Text = arreglo[8].ToString();
            textBox9.Text = arreglo[9].ToString();
        }
        private void lbPrueba_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            LimpiarCajas();
            int Busqueda = Convert.ToInt32(tbBuscar.Text);
            int[] arreglo = new int[10];
            arreglo[0] = Convert.ToInt32(tbPrueba.Text);
            arreglo[1] = Convert.ToInt32(textBox1.Text);
            arreglo[2] = Convert.ToInt32(textBox2.Text);
            arreglo[3] = Convert.ToInt32(textBox3.Text);
            arreglo[4] = Convert.ToInt32(textBox4.Text);
            arreglo[5] = Convert.ToInt32(textBox5.Text);
            arreglo[6] = Convert.ToInt32(textBox6.Text);
            arreglo[7] = Convert.ToInt32(textBox7.Text);
            arreglo[8] = Convert.ToInt32(textBox8.Text);
            arreglo[9] = Convert.ToInt32(textBox9.Text);
            bool encontrado = false;
            for (int i = 0; i < arreglo.Length; i++)
            {
                if (arreglo[i] == Busqueda)
                {
                    pintarCaja(i);
                    encontrado = true;
                }

            }
            if (!encontrado)
                MessageBox.Show("El elemento no existe");

        }
        public void pintarCaja(int pos)
        {
            switch (pos)
            {
                case 0: { tbPrueba.BackColor = Color.Red; } break;
                case 1: { textBox1.BackColor = Color.Red; } break;
                case 2: { textBox2.BackColor = Color.Red; } break;
                case 3: { textBox3.BackColor = Color.Red; } break;
                case 4: { textBox4.BackColor = Color.Red; } break;
                case 5: { textBox5.BackColor = Color.Red; } break;
                case 6: { textBox6.BackColor = Color.Red; } break;
                case 7: { textBox7.BackColor = Color.Red; } break;
                case 8: { textBox8.BackColor = Color.Red; } break;
                case 9: { textBox9.BackColor = Color.Red; } break;
                default: { MessageBox.Show("Opcion no valida"); } break;
            }
        }

        public void LimpiarCajas()
        {
            tbPrueba.BackColor = Color.White;
            textBox1.BackColor = Color.White;
            textBox2.BackColor = Color.White;
            textBox3.BackColor = Color.White;
            textBox4.BackColor = Color.White;
            textBox5.BackColor = Color.White;
            textBox6.BackColor = Color.White;
            textBox7.BackColor = Color.White;
            textBox8.BackColor = Color.White;
            textBox9.BackColor = Color.White;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        public void btnDesordenar_Click(object sender, EventArgs e)
        {
            LimpiarCajas();
            int[] arreglo = new int[10];
            arreglo[0] = Convert.ToInt32(tbPrueba.Text);
            arreglo[1] = Convert.ToInt32(textBox1.Text);
            arreglo[2] = Convert.ToInt32(textBox2.Text);
            arreglo[3] = Convert.ToInt32(textBox3.Text);
            arreglo[4] = Convert.ToInt32(textBox4.Text);
            arreglo[5] = Convert.ToInt32(textBox5.Text);
            arreglo[6] = Convert.ToInt32(textBox6.Text);
            arreglo[7] = Convert.ToInt32(textBox7.Text);
            arreglo[8] = Convert.ToInt32(textBox8.Text);
            arreglo[9] = Convert.ToInt32(textBox9.Text);
            string cadena = desordenar(arreglo);
            prueba.Text = cadena;

        }
        public string desordenar(int[] arreglo)
        {
            string final = "";
            bool flip = false;
            for (int i = 0; i < arreglo.Length; i++)//.length obtiene la longitud del arreglo
            {
                for (int j = 0 + 1; j < arreglo.Length; j++)
                {
                    if (checkBox1.Checked)
                        flip = (arreglo[i] > arreglo[j]);

                    else
                        flip = (arreglo[i] < arreglo[j]);
                    if (flip)
                    {
                        int aux = arreglo[i];
                        arreglo[i] = arreglo[j];
                        arreglo[j] = aux;
                    }
                }
            }
            for (int i = 0; i < arreglo.Length; i++)
                final += arreglo[i] + " ";
            acomodarCajitas(arreglo);
            return final;
        }

        private void btnAleatorio_Click(object sender, EventArgs e)
        {
            tbPrueba.Text = Convert.ToString(rand.Next(0, 99));
            textBox1.Text = Convert.ToString(rand.Next(0, 99));
            textBox2.Text = Convert.ToString(rand.Next(0, 99));
            textBox3.Text = Convert.ToString(rand.Next(0, 99));
            textBox4.Text = Convert.ToString(rand.Next(0, 99));
            textBox5.Text = Convert.ToString(rand.Next(0, 99));
            textBox6.Text = Convert.ToString(rand.Next(0, 99));
            textBox7.Text = Convert.ToString(rand.Next(0, 99));
            textBox8.Text = Convert.ToString(rand.Next(0, 99));
            textBox9.Text = Convert.ToString(rand.Next(0, 99));

        }

        private void btnQuicksort_Click(object sender, EventArgs e)
        {
            LimpiarCajas();
            int[] arreglo = new int[10];
            arreglo[0] = Convert.ToInt32(tbPrueba.Text);
            arreglo[1] = Convert.ToInt32(textBox1.Text);
            arreglo[2] = Convert.ToInt32(textBox2.Text);
            arreglo[3] = Convert.ToInt32(textBox3.Text);
            arreglo[4] = Convert.ToInt32(textBox4.Text);
            arreglo[5] = Convert.ToInt32(textBox5.Text);
            arreglo[6] = Convert.ToInt32(textBox6.Text);
            arreglo[7] = Convert.ToInt32(textBox7.Text);
            arreglo[8] = Convert.ToInt32(textBox8.Text);
            arreglo[9] = Convert.ToInt32(textBox9.Text);
            string cadena = Quicksort(arreglo);
            prueba.Text = cadena;

        }

        public string Quicksort(int[] arreglo)
        {
            string final = "";
            int sup = (arreglo.Length) - 1;
            int inf = 0;
            int i = inf, j = sup, elem_div, ayuda;
            elem_div = sup;
            Boolean bandera = false;
            while (!bandera)
            {
                while (arreglo[++i] < elem_div) ;
                while (arreglo[--j] > elem_div) ;
                if (i < j)
                {
                    ayuda = arreglo[i];
                    arreglo[i] = arreglo[j];
                    arreglo[j] = ayuda;
                }
                else
                    bandera = true;
            }

            ayuda = arreglo[i];
            arreglo[i] = arreglo[sup];
            arreglo[sup] = ayuda;

            for (int x = 0; x < arreglo.Length; x++)
                final += arreglo[i] + "-";
            acomodarCajitas(arreglo);
            return final;
        }
    }
}
