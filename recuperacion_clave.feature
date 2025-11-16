Feature: Acceso a la recuperación de contraseña
Como usuario que olvidó su contraseña
Quiero poder solicitar un código de verificación
Para restablecer y recuperar el acceso a mi cuenta.

Scenario: Usuario inicia el flujo de recuperación de contraseña
    Given que el usuario se encuentra en la página "login.html"
    When hace clic en el enlace "¿Olvidaste tu contraseña?"
    Then el sistema debe redirigir al usuario a una nueva página "recuperar.html"
    And debe mostrar un formulario solicitando el correo electrónico de recuperación.