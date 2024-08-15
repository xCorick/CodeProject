function redirectToPage() {
    
    var valueToPass = document.getElementById('inputValue').value;
    localStorage.setItem('storedValue', valueToPass);
    
    window.location.href = 'PanProducto.aspx';
}