using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class VerProducto : System.Web.UI.Page
    {
        private readonly ApplicationDbContext _context;

        public ProductosController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Productos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                .Include(p => p.TallasDisponibles)
                .FirstOrDefaultAsync(m => m.Id == id);

            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }

        // POST: Productos/AddToCart
        [HttpPost]
        public IActionResult AddToCart(int productoId, int tallaId)
        {
            // Implementa la lógica para agregar el producto al carrito
            // Puedes usar la sesión, base de datos, etc.

            return RedirectToAction("Index", "Carrito"); // Redirige al carrito
        }
    }
}