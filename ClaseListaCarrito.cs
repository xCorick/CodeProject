using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class ClaseListaCarrito
    {
        public int LisCar_Cantidad { get; set;}
        public SqlMoney LisCar_PrecioProducto { get; set;}
        public SqlMoney LisCar_Descuento { get; set;}
        public string LisCar_ProID { get;set;}
        public string LisCar_carritoID { get; set;}


        public ClaseListaCarrito() { }

        public ClaseListaCarrito(int LisCar_Cantidad,  SqlMoney LisCar_precioProducto, SqlMoney LisCar_Descuento, string LisCar_ProID, string LisCar_CarritoID)
        {
            this.LisCar_Cantidad = LisCar_Cantidad;
            this.LisCar_PrecioProducto = LisCar_PrecioProducto;
            this.LisCar_Descuento = LisCar_Descuento;
            this.LisCar_ProID = LisCar_ProID;
            this.LisCar_carritoID = LisCar_carritoID;
        }

    }
}