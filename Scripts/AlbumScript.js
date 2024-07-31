document.addEventListener('DOMContentLoaded', (event) => {
    const modal = new bootstrap.Modal(document.getElementById('modal'));
    const modalImage = document.getElementById('modalImage');

    document.querySelectorAll('.showImageBtn').forEach(button => {
        button.addEventListener('click', () => {
            const imageUrl = button.closest('.card').querySelector('img').getAttribute('data-image');
            modalImage.src = imageUrl;
            modal.show();
        });
    });
});
