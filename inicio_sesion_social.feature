Feature: Autenticación de usuario con Redes Sociales
Como usuario que valora la rapidez
Quiero poder iniciar sesión usando mi cuenta de Google o Facebook
Para acceder al sistema sin tener que recordar una nueva contraseña.

Scenario: Usuario inicia sesión con Google
    Given que el usuario se encuentra en la página "login.html"
    When hace clic en el botón "Google"
    Then el sistema debe abrir una ventana emergente del servicio de autenticación de Google
    And al completar exitosamente, debe redirigir al usuario a "index.html" con la sesión activa

Scenario: Usuario inicia sesión con Facebook
    Given que el usuario se encuentra en la página "login.html"
    When hace clic en el botón "Facebook"
    Then el sistema debe abrir una ventana emergente del servicio de autenticación de Facebook
    And al completar exitosamente, debe redirigir al usuario a "index.html" con la sesión activa