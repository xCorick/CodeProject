using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Antlr.Runtime.Tree;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;

namespace CodeProject
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public static string ruta2;
        protected void Page_Load(object sender, EventArgs e)
        {
            Nuevo.Enabled = true;
            Guardar.Enabled = true;
            Eliminar.Enabled = true;
            InputFile.Enabled = true;
            LlenarGrid();
            LlenarPublico("Bus_Publico", "publico");
            LlenarTalla("Bus_Talla", "talla");
        }

        public void LlenarTalla(string sp, string campo)
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, sp);
            try
            {
                int con = datos.Rows.Count;
                DDLTalla.DataSource = datos;
                DDLTalla.DataTextField = campo;
                DDLTalla.DataBind();
            }
            catch
            {

            }
            /* int cont = 0;
             cont= Convert.ToInt32(datos.Rows[]);
             string[] Elementos = new string[cont];
             for (int i = 0; i < cont; i++)
             {
                 DLTalla.Items.Add(Elementos[i]);
             }*/
            conn.Close();
        }

        public void LlenarPublico(string sp, string campo)
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, sp);
            try
            {
                int con = datos.Rows.Count;
                DDLPublico.DataSource = datos;
                DDLPublico.DataTextField = campo;
                DDLPublico.DataBind();
            }
            catch {

            }
            /* int cont = 0;
             cont= Convert.ToInt32(datos.Rows[]);
             string[] Elementos = new string[cont];
             for (int i = 0; i < cont; i++)
             {
                 DLTalla.Items.Add(Elementos[i]);
             }*/
            conn.Close();
        }

        void LlenarGrid()
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, "Lst_Productos");
            try
            {
                grid.DataSource = datos;
                grid.DataBind();
                conn.Close();
            }
            catch
            {

            }

        }

        void LlenarForma(string clave)
        {
            try
            {
                var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Producto", "@Pro_ID", clave);
                if (datos.Rows.Count > 0)
                {
                    TBClave.Text = datos.Rows[0].ItemArray[0].ToString();
                    TBNombre.Text = datos.Rows[0].ItemArray[1].ToString();
                    TBDescrip.Text = datos.Rows[0].ItemArray[2].ToString();
                    TBPrecio.Text = Convert.ToDouble(datos.Rows[0].ItemArray[3]).ToString("N");
                    HFProducto.Value = datos.Rows[0].ItemArray[4].ToString();
                    TBStock.Text = datos.Rows[0].ItemArray[5].ToString();
                    TBCantOrden.Text = datos.Rows[0].ItemArray[6].ToString();
                    DDLTalla.Text = datos.Rows[0].ItemArray[7].ToString();
                    TBMarca.Text = datos.Rows[0].ItemArray[8].ToString();
                    DDLPublico.Text = datos.Rows[0].ItemArray[9].ToString();
                    TBCategoria.Text = datos.Rows[0].ItemArray[10].ToString();
                    TBClave.Enabled = false;
                    conn.Close();
                }
            }
            catch {
                Response.Write("<script>alert('Something's wrong')</script>");
            }

        }
        protected void CVInputFile_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = InputFile.PostedFile != null && InputFile.PostedFile.ContentLength > 0;
        }

        Cloudinary cloud;
        public string CargarImagen()
        {
            Account account = new Account(
           "dj4vhebsj",
           "229926379921624",
           "om5p15DLxxbX3CbTmwQyaeBr5rs"
            );

            string ruta2 ="";

            MemoryStream ms = new MemoryStream();
            ms = new MemoryStream(InputFile.FileBytes);
            try
            {
                cloud = new Cloudinary(account);
                CloudinaryDotNet.Cloudinary clud = new CloudinaryDotNet.Cloudinary(account);
                var UploadPrams = new ImageUploadParams()
                {
                    File = new FileDescription(InputFile.FileName, ms)
                };
                var UploadResult = cloud.Upload(UploadPrams);

                if (UploadResult != null && UploadResult.SecureUrl != null)
                {
                    string ruta = UploadResult.SecureUrl.ToString();
                    ruta2 = ruta;
                }
                else
                {
                    // Manejo del caso en que SecureUrl es null
                    // Puede registrar un error o lanzar una excepción
                    Response.Write("<script>alert('Error al subir la imagen')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error al subir la imagen')</script>");
            }
            return ruta2;
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Nuevo.Enabled = false;
            Guardar.Enabled = false;
            Eliminar.Enabled = false;
            InputFile.Enabled = false;
            string ruta2 = CargarImagen();
            bool insersion = Conector.InsertInto(Conector.strConexion, "Ins_Producto", "@Pro_ID", TBClave.Text, "@Pro_Nombre", TBNombre.Text, "Pro_Descripcion", TBDescrip.Text, "@Pro_Precio", TBPrecio.Text, "@Pro_Imagen", ruta2, "@Pro_Stock", TBStock.Text, "@Pro_UnidadesOrden", TBCantOrden.Text, "@Pro_Talla", DDLTalla.Text, "@Pro_Marca", TBMarca.Text, "@Pro_Publico", DDLPublico.Text, "@Pro_Categoria", TBCategoria.Text);

            if (insersion)
            {
                Response.Write("<script>alert('Producto guardado exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Algo salio mal, intenta de nuevo')</script>");
            }
            LlenarGrid();
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string clave = grid.Rows[grid.SelectedRow.RowIndex].Cells[0].Text;
            LlenarForma(clave);
        }
    }
}