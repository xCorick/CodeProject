window.onload = function () {
    var value = localStorage.getItem('storedValue');
    if (value) {
        document.getElementById('displayValue').innerText = value;
        localStorage.removeItem('storedValue'); // Opcional, si solo deseas un uso único
    }
}