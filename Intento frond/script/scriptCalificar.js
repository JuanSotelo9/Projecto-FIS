document.addEventListener("DOMContentLoaded", function() {
    // opción "Seleccionar" como predeterminada
    document.querySelectorAll('select').forEach(select => {
        select.selectedIndex = 0;
    });

    const radioButtons = document.querySelectorAll('input[name="opcRadio"]');
    radioButtons.forEach(radio => {
        radio.checked = false;
    });

    const textA1 = document.getElementById('textA1');
    textA1.value = '';
    const textA2 = document.getElementById('textA2');
    textA2.value = '';
});
