document.addEventListener('DOMContentLoaded', function() {
    var togglePassword = document.querySelector('#togglePassword');
    var passwordInput = document.querySelector('#password');

    if (togglePassword && passwordInput) {
        togglePassword.addEventListener('click', function() {
            var isPassword = passwordInput.getAttribute('type') === 'password';
            passwordInput.setAttribute('type', isPassword ? 'text' : 'password');
            togglePassword.textContent = isPassword ? 'Ocultar' : 'Ver';
        });
        passwordInput.addEventListener('invalid', function() {
            if (passwordInput.validity.tooShort) {
                passwordInput.setCustomValidity('La contraseña es muy corta. Debe tener al menos 4 caracteres.');
            } else if (passwordInput.validity.valueMissing) {
                passwordInput.setCustomValidity('Por favor, ingresá una contraseña.');
            }
        });
        
        passwordInput.addEventListener('input', function() {
            passwordInput.setCustomValidity('');
        });
    }
});