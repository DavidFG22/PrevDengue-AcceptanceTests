Feature: Navegación del flujo de Autenticación
Como un visitante del sitio
Quiero poder moverme fácilmente entre la página de inicio, login y registro
Para gestionar mi cuenta sin confusiones.

Scenario: Navegación de Inicio a Registro
    Given que el usuario está en la página de inicio "index.html"
    When hace clic en el botón "Registrar" del encabezado
    Then el sistema debe redirigir al usuario a la página "register.html"

Scenario: Navegación de Login a Registro
    Given que el usuario está en la página de inicio de sesión "login.html"
    When hace clic en el enlace "Regístrate aquí" del pie de página
    Then el sistema debe redirigir al usuario a la página "register.html"

Scenario: Navegación de Registro a Login
    Given que el usuario está en la página de registro "register.html"
    When hace clic en el enlace "Inicia sesión aquí" del pie de página
    Then el sistema debe redirigir al usuario a la página "login.html"