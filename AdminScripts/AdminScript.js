const defaultFile = 'AdminImages/empty.jpg';
const file = document.getElementById('InputFile');
const img = document.getElementById('producto');
file.addEventListener('change', e => {
    if (e.target.files[0]) {
        const reader = new FileReader();
        reader.onload = function (e) {
            img.src = e.target.result;
        }
        reader.readAsDataURL(e.target.files[0])
    }
    else {
        img.src = defaultFile;
    }
});