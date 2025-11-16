Feature: Enlaces del Pie de Página y Promoción
Como usuario
Quiero acceder a las redes sociales y tiendas de aplicaciones
Para seguir a PrevDengue o descargar la app móvil.

Scenario: Usuario accede a la red social Instagram
    Given que el usuario está en la página de inicio "index.html"
    And se desplaza hasta el footer
    When hace clic en el icono (imagen) de "Instagram"
    Then el sistema debe abrir una nueva pestaña del navegador
    And la URL de la nueva pestaña debe ser "https://www.instagram.com/prevdengue"

Scenario: Usuario accede a la tienda Apple Store
    Given que el usuario está en la sección "App Promo" de "index.html"
    When hace clic en el botón "App Store"
    Then el sistema debe abrir una nueva pestaña del navegador
    And la URL debe ser la página oficial de PrevDengue en la Apple App Store