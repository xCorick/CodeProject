using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class ClaseCarrito
    {
        public string CarritoID { get; set; }


        public ClaseCarrito() { }

        public ClaseCarrito(string CarritoID)
        {
            this.CarritoID = CarritoID;
        }

    }
}