Feature: Registro de nuevo usuario en PrevDengue
Como ciudadano que quiere cuidar su entorno
Quiero registrarme fácilmente con mi celular o correo
Para acceder rápidamente a las funciones de reportes y alertas

Background:
    Given que el usuario se encuentra en la página "register.html"

Scenario: Registro exitoso con todos los campos válidos
    Given que el usuario ingresa "Juan Pérez" en el campo "Nombre completo"
    And selecciona "Comas" en el campo "Distrito de residencia"
    And ingresa "999999999" en el campo "Celular"
    And ingresa "juan@ejemplo.com" en el campo "Correo electrónico"
    And ingresa "password123" en el campo "Contraseña"
    And marca la casilla de "Acepto los Términos y Condiciones"
    When hace clic en el botón "Crear Cuenta"
    Then el sistema debe redirigir al usuario a "login.html"
    And debe mostrar un mensaje de confirmación "Cuenta creada exitosamente"

Scenario: Fallo en el registro por formato de correo inválido
    Given que el usuario ingresa "juan.com" en el campo "Correo electrónico"
    When hace clic en el botón "Crear Cuenta"
    Then el sistema debe mostrar un mensaje de error "Formato de correo no válido" [cite: 998]
    And no debe redirigir a la página de login