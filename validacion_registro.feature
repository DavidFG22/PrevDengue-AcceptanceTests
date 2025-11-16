Feature: Validación de campos en el formulario de registro
Como administrador del sistema
Quiero que los usuarios completen campos esenciales
Para asegurar que las alertas y reportes tengan la información mínima necesaria.

Scenario: Intento de registro sin aceptar términos y condiciones
    Given que el usuario está en la página "register.html"
    And ha llenado todos los campos de texto y el distrito
    But no ha marcado la casilla "Acepto los Términos y Condiciones"
    When hace clic en el botón "Crear Cuenta"
    Then el sistema debe mostrar una alerta indicando "Debe aceptar los términos y condiciones"
    And el usuario debe permanecer en la página "register.html"

Scenario: Intento de registro sin seleccionar un distrito
    Given que el usuario está en la página "register.html"
    And ha llenado todos los campos de texto
    But ha dejado el campo "Distrito de residencia" en "Selecciona..."
    When hace clic en el botón "Crear Cuenta"
    Then el sistema debe mostrar un mensaje de error "El distrito es obligatorio para las alertas"
    And el formulario no debe enviarse