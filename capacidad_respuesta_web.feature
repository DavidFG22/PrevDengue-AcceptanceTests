Feature: Capacidad de respuesta (Responsive) de la Página Principal
Como usuario en un dispositivo móvil
Quiero que la página de inicio se adapte al tamaño de mi pantalla
Para tener una experiencia de lectura y navegación cómoda.

Scenario: Visualización del Header en móvil
    Given que el usuario abre "index.html" en un dispositivo con ancho de 400px
    When el usuario mira el encabezado
    Then la barra de navegación principal debe apilarse verticalmente (en columna)
    And los botones "Iniciar Sesión" y "Registrar" deben ajustarse al ancho

Scenario: Visualización de Herramientas Rápidas en móvil
    Given que el usuario abre "index.html" en un dispositivo con ancho de 400px
    When el usuario mira la sección "Servicios Ciudadanos"
    Then las tarjetas de herramientas ("Verificar Brigadista", "Triaje", etc.) deben mostrarse en una sola columna