Feature: Flujo del botón "Reportar Foco" (Call to Action)
Como usuario del sistema
Quiero que el botón principal de reporte me guíe
Para asegurar que solo usuarios autenticados puedan enviar información.

Scenario: Intento de reportar sin haber iniciado sesión
    Given que el usuario está en la página de inicio "index.html"
    And el usuario no ha iniciado sesión
    When hace clic en el botón principal "REPORTAR FOCO"
    Then el sistema debe redirigir al usuario a la página "login.html"
    And el sistema debe mostrar un mensaje (opcional) "Debes iniciar sesión para reportar"

Scenario: Intento de reportar habiendo iniciado sesión
    Given que el usuario está en la página de inicio "index.html"
    And el usuario SÍ ha iniciado sesión
    When hace clic en el botón principal "REPORTAR FOCO"
    Then el sistema debe redirigir al usuario a la página "crear_reporte.html"