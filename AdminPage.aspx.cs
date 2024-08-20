using System;
using System.Collections.Generic;
using System.Drawing;
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
            if (!IsPostBack)
            {
                DDLPublico.Items.Clear();
                LlenarGrid();
                LlenarPublico("Bus_Publico");
                LlenarTalla("Bus_Talla", "talla");
                LlenarGridEliminados();
                //bool isAnyChecked = GVProductBor.Rows.Cast<GridViewRow>().Any(row => ((CheckBox)row.FindControl("CheckBoxSelect")).Checked);
                if (GVProductBor.Rows.Count == 0)
                {
                    Recuperar.Enabled = false;
                    Purgar.Enabled = false;
                    
                }
                else
                {
                    Recuperar.Enabled = true;
                    Purgar.Enabled = true;
                    
                }
            }
                
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

        public void LlenarPublico(string sp)
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, sp);
            try
            {
                int cont = 0;
                cont = Convert.ToInt32(datos.Rows.Count);
                for (int i = 0; i < cont; i++)
                {
                    DDLPublico.Items.Add(datos.Rows[i].ItemArray[0].ToString());
                }
                conn.Close();
                /*int con = datos.Rows.Count;
                DDLPublico.DataSource = datos;
                DDLPublico.DataTextField = campo;
                DDLPublico.DataBind();
                */
            }
            catch {

            }
             
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
                Response.Write("<script>alert('No se pudo recuperar los datos de los productos, intente de nuevo')</script>");
            }

        }

        void LlenarGridEliminados()
        {
            var (conn, comando, adaptador, datos) = Conector.LstTable(Conector.strConexion, "Lst_ElimPro");
            try
            {
                GVProductBor.DataSource = datos;
                GVProductBor.DataBind();
                conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('No se pudo recuperar los datos de los productos eliminados, intente de nuevo')</script>");
            }

        }

        void LlenarForma(string clave)
        {
            try
            {
                var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Producto", "@Pro_ID", clave);
                if (datos.Rows.Count > 0)
                {
                    string tallas = datos.Rows[0].ItemArray[7].ToString();

                    LlenarChecks(CBLTallas, tallas);

                    TBClave.Text = datos.Rows[0].ItemArray[0].ToString();
                    TBNombre.Text = datos.Rows[0].ItemArray[1].ToString();
                    TBDescrip.Text = datos.Rows[0].ItemArray[2].ToString();
                    TBPrecio.Text = Convert.ToDouble(datos.Rows[0].ItemArray[3]).ToString("N");
                    HFProducto.Value = datos.Rows[0].ItemArray[4].ToString();
                    TBStock.Text = datos.Rows[0].ItemArray[5].ToString();
                    TBCantOrden.Text = datos.Rows[0].ItemArray[6].ToString();
                    TBMarca.Text = datos.Rows[0].ItemArray[8].ToString();
                    DDLPublico.Text = datos.Rows[0].ItemArray[9].ToString();
                    TBCategoria.Text = datos.Rows[0].ItemArray[10].ToString();
                    TBClave.Enabled = false;
                    conn.Close();
                }
            }
            catch {
                Response.Write("<script>alert('No se pudo llenar el formulario, favor de intentar de nuevo')</script>");
            }

        }
        protected void CVHFProduct_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !string.IsNullOrEmpty(HFProducto.Value.ToString());
        }

        Cloudinary cloud;
        public (string ruta, bool isInserted) CargarImagen()
        {
            Account account = new Account(
           "dj4vhebsj",
           "229926379921624",
           "om5p15DLxxbX3CbTmwQyaeBr5rs"
            );

            string ruta2 ="";

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

        public void EliminarImagenes(int cantidad, string claves)
        {
            //string[] url = claves.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Lst_ImgProBor", "@Pro_IDs", claves);
            for (int i = 0; i < cantidad; i++)
            {
               bool hola = EliminarImagen(datos.Rows[i].ItemArray[0].ToString());
            }
            conn.Close();
        }

        public string ObtenerStringDeClaves(GridView grid)
        {
            string ids = "";
            foreach(GridViewRow row in grid.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("CheckBoxSelect");
                if (chk != null && chk.Checked)
                {
                    if (ids == "")
                    {
                        ids = grid.DataKeys[row.RowIndex].Value.ToString() + ",";
                    }
                    else
                    {
                        ids = ids + grid.DataKeys[row.RowIndex].Value.ToString() + ",";
                    }
                }
            }
            if (ids.EndsWith(","))
            {
                ids = ids.TrimEnd(',');
            }
            return ids;
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            var seleccionados = ShowSelectedItemsCheckBox(CBLTallas);
            string tallas = string.Join(" ", seleccionados);
            string ruta2;
            bool isInserted;
            if (Page.IsValid)
            {
                bool insercion;
                var (conn,comando,adaptador,datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Producto", "@Pro_ID", TBClave.Text);
                if (datos.Rows.Count > 0)
                {
                    if (HFProducto.Value.ToString() == datos.Rows[0].ItemArray[4].ToString())
                    {
                        insercion = Conector.InsertInto(Conector.strConexion, "Act_Producto", "@Pro_ID", TBClave.Text, "@Pro_Nombre", TBNombre.Text, "Pro_Descripcion", TBDescrip.Text, "@Pro_Precio", TBPrecio.Text, "@Pro_Imagen", HFProducto.Value.ToString(), "@Pro_Stock", TBStock.Text, "@Pro_UnidadesOrden", TBCantOrden.Text, "@Pro_Talla", tallas, "@Pro_Marca", TBMarca.Text, "@Pro_Publico", DDLPublico.SelectedValue.ToString(), "@Pro_Categoria", TBCategoria.Text);
                        if (insercion)
                        {
                            Response.Write("<script>alert('Producto actualizado exitosamente')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Algo salio mal, intenta de nuevo1')</script>");
                        }
                        LlenarGrid();
                        conn.Close();
                        LimpiarTextBoxes(this);
                        TBClave.Enabled = true;
                        HFProducto.Value = "AdminImages/empty.jpg";
                        VaciarChecks(CBLTallas);
                    }
                    else
                    {
                        EliminarImagen(datos.Rows[0].ItemArray[4].ToString());
                        var resultado2 = CargarImagen();
                        ruta2 = resultado2.ruta;
                        isInserted = resultado2.isInserted;

                        if (isInserted)
                        {
                            insercion = Conector.InsertInto(Conector.strConexion, "Act_Producto", "@Pro_ID", TBClave.Text, "@Pro_Nombre", TBNombre.Text, "Pro_Descripcion", TBDescrip.Text, "@Pro_Precio", TBPrecio.Text, "@Pro_Imagen", ruta2, "@Pro_Stock", TBStock.Text, "@Pro_UnidadesOrden", TBCantOrden.Text, "@Pro_Talla", tallas, "@Pro_Marca", TBMarca.Text, "@Pro_Publico", DDLPublico.SelectedValue.ToString(), "@Pro_Categoria", TBCategoria.Text);
                            if (insercion)
                            {
                                Response.Write("<script>alert('Producto actualizado exitosamente')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Algo salio mal, intenta de nuevo2')</script>");
                            }
                        }   
                    }
                    LlenarGrid();
                    conn.Close();
                    LimpiarTextBoxes(this);
                    TBClave.Enabled = true;
                    HFProducto.Value = "AdminImages/empty.jpg";
                    VaciarChecks(CBLTallas);
                    return;
                }
                var resultado = CargarImagen();
                ruta2 = resultado.ruta;
                isInserted = resultado.isInserted;

                if (isInserted)
                {
                    insercion = Conector.InsertInto(Conector.strConexion, "Ins_Producto", "@Pro_ID", TBClave.Text, "@Pro_Nombre", TBNombre.Text, "Pro_Descripcion", TBDescrip.Text, "@Pro_Precio", TBPrecio.Text, "@Pro_Imagen", ruta2, "@Pro_Stock", TBStock.Text, "@Pro_UnidadesOrden", TBCantOrden.Text, "@Pro_Talla", tallas, "@Pro_Marca", TBMarca.Text, "@Pro_Publico", DDLPublico.SelectedValue.ToString(), "@Pro_Categoria", TBCategoria.Text);

                    if (insercion)
                    {
                        Response.Write("<script>alert('Producto guardado exitosamente')</script>");
                        LlenarGrid();
                        conn.Close();
                        LimpiarTextBoxes(this);
                        TBClave.Enabled = true;
                        HFProducto.Value = "AdminImages/empty.jpg";
                        VaciarChecks(CBLTallas);
                        HFProducto.Value = ruta2;
                    }
                    else
                    {
                        Response.Write("<script>alert('Algo salio mal, intenta de nuevo3')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Algo salio mal, intenta de nuevo4')</script>");
                }
            }
            LlenarGrid();
            LimpiarTextBoxes(this);
            TBClave.Enabled = true;
            HFProducto.Value = "AdminImages/empty.jpg";
            VaciarChecks(CBLTallas);
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string clave = grid.Rows[grid.SelectedRow.RowIndex].Cells[0].Text;
                LlenarForma(clave);
            }
            catch
            {

            }
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            LimpiarTextBoxes(this);
            TBClave.Enabled = true;
            HFProducto.Value = "AdminImages/empty.jpg";
            VaciarChecks(CBLTallas);
        }

        protected List<string> ShowSelectedItemsCheckBox(CheckBoxList check)
        {
            List<string> seleccionados = new List<string>();
            foreach (ListItem item in check.Items)
            {
                if (item.Selected)
                {
                    seleccionados.Add(item.Value);
                }
            }
            return seleccionados;
        }

        protected void LlenarChecks(CheckBoxList check, string tallas)
        {
            string[] tallaArray = tallas.Split(' ');
            foreach (string talla in tallaArray)
            {
                ListItem item = check.Items.FindByValue(talla);
                if (item != null)
                {
                    item.Selected = true;
                }
            }
        }
        protected void VaciarChecks(CheckBoxList check)
        {
            foreach (ListItem item in check.Items)
            {
                item.Selected = false;
            }
        }
        protected void LimpiarTextBoxes(Control parent)
        {
            foreach (Control control in parent.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = string.Empty;
                }
                else if (control.HasControls())
                {
                    LimpiarTextBoxes(control);
                }
            }
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            if (TBClave.Text == "")
            {
                LBClave.Visible = true;
            }
            else
            {
                try
                {
                    bool insercion = Conector.InsertInto(Conector.strConexion, "Bor_Productos", "@Pro_ID", TBClave.Text);
                    if (insercion)
                    {
                        Response.Write("<script>alert('Producto borrado exitosamente')</script>");
                        LlenarGrid();
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('"+ ex +"')</script>");
                }
            }
            LimpiarTextBoxes(this);
            TBClave.Enabled = true;
            HFProducto.Value = "AdminImages/empty.jpg";
            LlenarGridEliminados();
            VaciarChecks(CBLTallas);
            Recuperar.Enabled = true;
            Purgar.Enabled = true;
            
        }

        protected void DDLPublico_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TBClave_TextChanged(object sender, EventArgs e)
        {
            if (TBClave.Text != "")
            {
                LlenarForma(TBClave.Text);
            }
        }

        protected void Recuperar_Click(object sender, EventArgs e)
        {
            string claves = ObtenerStringDeClaves(GVProductBor);
            bool insercion = Conector.InsertInto(Conector.strConexion, "Recuperar_Product", "@Pro_IDs", claves);
            if (insercion)
            {
                Response.Write("<script>alert('Se recuperaron los productos con clave "+claves+"')</script>");
                LlenarGrid();
            }
            else
            {
                Response.Write("<script>alert('No se pudieron recuperar los productos')</script>");
            }
            LlenarGridEliminados();
        }

        protected void Purgar_Click(object sender, EventArgs e)
        {
            string claves = ObtenerStringDeClaves(GVProductBor);
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Lst_ImgProBor", "@Pro_IDs", claves);
            int conteo = datos.Rows.Count;
            EliminarImagenes(conteo, claves);
            bool insercion = Conector.InsertInto(Conector.strConexion, "Bor_ProductosSelect", "@Pro_IDs", claves);
            if (insercion)
            {
                Response.Write("<script>alert('Se borraron permanentemente los productos con claves " + claves + "')</script>");
                conn.Close();
            }
            else
            {
                Response.Write("<script>alert('No se pudieron borrar permanentemente los productos, intente de nuevo')</script>");
            }
            LlenarGridEliminados();
        }

        protected void Produc_Click(object sender, EventArgs e)
        {

        }
    }
}