fetch('/YourController/GetProducts')
    .then(response => response.json())
    .then(data => {
        const container = document.getElementById('productsContainer');

        data.forEach(product => {
            const card = `
                    <div class="card">
                        <img src="${product.Pro_Imagen}" alt="${product.Pro_Nombre}">
                        <h3>${product.Pro_Nombre}</h3>
                        <p>Price: $${product.Pro_Precio}</p>
                        <a href="details.html?id=${product.Pro_ID}">Ver Detalles</a>
                    </div>
                `;

            container.innerHTML += card;
        });
    });