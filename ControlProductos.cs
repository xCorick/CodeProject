using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CodeProject
{
    public IActionResult Index()
    {
        var productos = ObtenerProductos(); // Implementa este método para obtener productos de la base de datos.
        return View(productos);
    }

    private List<Producto> ObtenerProductos()
    {
        // Aquí iría la lógica para obtener productos de tu base de datos.
        // Por ahora, un ejemplo estático.
        return new List<Producto>
        {
            new Producto { Id = 1, Nombre = "Producto 1", Precio = 19.99M, FotoUrl = "/images/product1.jpg" },
            new Producto { Id = 2, Nombre = "Producto 2", Precio = 29.99M, FotoUrl = "/images/product2.jpg" }
        };
    }
}