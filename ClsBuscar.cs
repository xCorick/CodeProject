using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class ClsBuscar
    {
        public string Pro_Categoria { get; set; }


        public ClsBuscar() { }

        public ClsBuscar(string Pro_Categoria)
        {
            this.Pro_Categoria = Pro_Categoria;
        }
    }
}