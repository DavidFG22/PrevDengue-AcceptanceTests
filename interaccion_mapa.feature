Feature: Visualización de mapa interactivo
Como usuario de PrevDengue
Quiero interactuar con un mapa que muestre reportes y zonas de riesgo cercanas
Para conocer la situación de mi distrito y colaborar en la prevención

Background:
    Given que el usuario se encuentra en la página "index.html"
    And el mapa interactivo se ha cargado correctamente mediante Leaflet

Scenario: Exploración de marcadores en el mapa
    Given que existen reportes activos en la zona visible del mapa
    When el usuario visualiza un ícono de reporte (marcador rojo)
    And hace clic o toca el marcador
    Then se debe abrir una ventana emergente (popup) con la descripción "Riesgo Alto" y detalles del foco 

Scenario: Visualización de centros de salud
    Given que el mapa contiene capas de información
    When el usuario navega por el mapa

    Then debe poder identificar íconos diferenciados para los establecimientos de salud (marcador azul) 
