using CloudinaryDotNet.Actions;
using CloudinaryDotNet;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["user"];
            if(usuario == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_UsuarioForm", "@Usu_Correo", usuario.Correo);
                if (datos.Rows.Count > 0)
                {
                    string imagen = datos.Rows[0].ItemArray[0].ToString();
                    string telefono = datos.Rows[0].ItemArray[3].ToString();
                    string direccion = datos.Rows[0].ItemArray[4].ToString();
                    if (!string.IsNullOrEmpty(imagen))
                    {
                        HFPicture.Value = imagen;
                    }
                    txtFirstName.Text = datos.Rows[0].ItemArray[1].ToString();
                    txtLastName.Text = datos.Rows[0].ItemArray[2].ToString();
                    txtPhone.Text = datos.Rows[0].ItemArray[3].ToString();
                    if (!String.IsNullOrEmpty(direccion))
                    {
                        string[] dir = direccion.Split('|');
                        for (int i = 0; i < dir.Length; i++)
                        {
                            dir[i] = dir[i].Trim();
                        }
                        txtStreet.Text = dir[0];
                        txtNeighborhood.Text = dir[1];
                        txtCity.Text = dir[2];
                        txtState.Text = dir[3];
                        txtPostalCode.Text = dir[4];
                    }
                    conn.Close();
                }
                else
                {
                    Response.Write("<script>alert('No se pudo recuperar los datos del usuario, intente de nuevo')</script>");
                }
            }
        }

        protected void btnUploadPicture_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(HFPicture.Value))
            {
                bool isInserted;
                string ruta;
                Usuario usuario = (Usuario)Session["user"];
                string correo = usuario.Correo; 
                var resultado = CargarImagen();
                isInserted = resultado.isInserted;
                ruta = resultado.ruta;
                if (isInserted)
                {
                    bool insercion = Conector.InsertInto(Conector.strConexion, "Act_ImgPerfil", "@Usu_Correo", correo, "@Usu_Foto", ruta);
                    if (insercion)
                    {
                        Response.Write("<script>alert('Se actualizo su foto')</script>");
                        if (!String.IsNullOrEmpty(usuario.UsuarioFoto))
                        {
                            bool elmininar = EliminarImagen(usuario.UsuarioFoto);
                        }
                    }
                }
            }
        }

        public (string ruta, bool isInserted) CargarImagen()
        {
            Cloudinary cloud;
            Account account = new Account(
           "dj4vhebsj",
           "229926379921624",
           "om5p15DLxxbX3CbTmwQyaeBr5rs"
            );

            string ruta2 = "";

            bool isInserted2 = false;

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
                    isInserted2 = true;
                    return (ruta2, isInserted2);
                }
                else
                {
                    // Manejo del caso en que SecureUrl es null
                    // Puede registrar un error o lanzar una excepción
                    Response.Write("<script>alert('Error al subir la imagen')</script>");
                    return (ruta2, isInserted2);
                }
            }
            catch
            {
                Response.Write("<script>alert('Error al subir la imagen')</script>");
            }
            return (ruta2, isInserted2);
        }
        public bool EliminarImagen(string imageUrl)
        {
            try
            {
                // Configurar la cuenta de Cloudinary
                Account account = new Account(
                    "dj4vhebsj",
                    "229926379921624",
                    "om5p15DLxxbX3CbTmwQyaeBr5rs"
                );

                Cloudinary cloudinary = new Cloudinary(account);

                // Extraer el public_id de la URL de la imagen
                var uri = new Uri(imageUrl);
                string publicId = Path.GetFileNameWithoutExtension(uri.LocalPath);

                // Eliminar la imagen usando el public_id
                var deletionParams = new DeletionParams(publicId);
                var deletionResult = cloudinary.Destroy(deletionParams);

                // Verificar si la eliminación fue exitosa
                if (deletionResult.Result == "ok")
                {
                    return true;
                }
                else
                {
                    Response.Write("<script>alert('Error al eliminar la imagen')</script>");
                    return false;
                }
            }
            catch
            {
                Response.Write("<script>alert('Error al eliminar la imagen')</script>");
                return false;
            }
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["user"];
            if (txtFirstName.Text == "")
            {
                LbNombre.Visible = true;
                txtFirstName.Focus();
                return;
            }
            if (txtLastName.Text == "")
            {
                LbApellidos.Visible = true;
                txtLastName.Focus();
                return;
            }
            string numero = txtPhone.Text.Trim();
            if (System.Text.RegularExpressions.Regex.IsMatch(numero, @"^\d+$"))
            {
                Response.Write("<script>alert('Solo van numeros en el telefono')</script>");
                return;
            }
            if (numero.Length < 10 && numero.Length > 10)
            {
                Response.Write("<script>alert('El numero debe ser de 10 digitos')</script>");
                return;
            }
            bool insercion = Conector.InsertInto(Conector.strConexion, "Act_Usuario", "@Usu_Correo", usuario.Correo, "@Cli_Nombre", txtFirstName.Text.Trim(), "@Cli_Apellidos", txtLastName.Text.Trim(), "@Cli_Telefono", txtPhone.Text.Trim());
            if (insercion)
            {
                Response.Write("<script>alert('Se actualizaron sus datos correctamente')</script>");    
            }
            else
            {
                Response.Write("<script>alert('Algo falló, verifique que los textos no sean muy grandes o que se halla equivocado de dato')</script>");
            }
        }
    }
}