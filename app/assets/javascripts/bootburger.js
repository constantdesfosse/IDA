$('[data-toggle=dropdown]').each(function() {
 this.addEventListener('click', function() {}, false);
});

$('body').on('touchstart.dropdown', '.dropdown-menu', function (e) {
    e.stopPropagation();
});
