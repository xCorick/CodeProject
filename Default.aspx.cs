using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarImagen();
        }

        public string[] AlbumImagen()
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, "Bring_Images");
            string[] modeImage = new string[datos.Rows.Count];
            for (int i = 0; i < datos.Rows.Count; i++)
            {
                modeImage[i] = datos.Rows[i].ItemArray[0].ToString();
            }
            return modeImage;
        }

        public void LlenarImagen()
        {
            string[] modeImage = AlbumImagen();
            int i = 0;

            // Llamada al método recursivo para llenar los HiddenFields
            LlenarHiddenFields(this.Controls, modeImage, ref i);
        }

        private void LlenarHiddenFields(ControlCollection controls, string[] modeImage, ref int i)
        {
            foreach (Control control in controls)
            {
                if (control is HiddenField hiddenField && i < modeImage.Length)
                {
                    hiddenField.Value = modeImage[i];
                    i++;
                }
                else if (control.HasControls())
                {
                    // Si el control tiene controles secundarios, los recorremos recursivamente
                    LlenarHiddenFields(control.Controls, modeImage, ref i);
                }
            }
        }
    }
  
}