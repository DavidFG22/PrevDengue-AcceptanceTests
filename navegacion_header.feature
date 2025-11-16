Feature: Navegación del Header Principal
Como usuario en la página de inicio
Quiero usar la barra de navegación principal
Para acceder a las diferentes secciones de la aplicación.

Scenario: Usuario accede a "Consultar Focos"
    Given que el usuario está en la página de inicio "index.html"
    When hace clic en el enlace "Consultar Focos" del encabezado
    Then el sistema debe redirigir al usuario a la página "mapa-focos.html"
    And el mapa principal de reportes debe estar visible

Scenario: Usuario accede a "Comunidad"
    Given que el usuario está en la página de inicio "index.html"
    When hace clic en el enlace "Comunidad" del encabezado
    Then el sistema debe redirigir al usuario a la página "comunidad.html"