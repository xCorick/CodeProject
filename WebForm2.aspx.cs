using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] modeImage = new string[] {};
            modeImage = AlbumImagen();
            for (int i = 0; i < Convert.ToInt32(modeImage.Length); i++)
            {
                Response.Write("<script>alert('"+modeImage[i].ToString()+"')</script>");
            }
        }

        public string[] AlbumImagen()
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, "Bring_Images");
            string[] modeImage = new string[datos.Rows.Count];
            for (int i = 0; i < datos.Rows.Count; i++) { 
                modeImage[i] = datos.Rows[i].ItemArray[0].ToString();
            }
            return modeImage;
        }
    }
}