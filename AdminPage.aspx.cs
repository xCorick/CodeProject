using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
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
        protected void CVInputFile_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = InputFile.PostedFile != null && InputFile.PostedFile.ContentLength > 0;
        } 
    }
}