Feature: Interacción con Herramientas Rápidas de Salud
Como usuario (enfermo o preventivo)
Quiero acceder rápidamente a herramientas de salud y logística
Para tomar decisiones informadas sobre mi bienestar y el de mi comunidad.

Scenario: Usuario accede al Triaje de Síntomas
    Given que el usuario está en la página de inicio "index.html"
    When hace clic en el botón "Evaluación Express" bajo la tarjeta "¿Tienes síntomas?"
    Then el sistema debe redirigir al usuario a la página "triaje.html"

Scenario: Usuario consulta el cronograma de fumigación
    Given que el usuario está en la página de inicio "index.html"
    When hace clic en el botón "Ver Calendario" bajo la tarjeta "Cronograma"
    Then el sistema debe redirigir al usuario a la página "calendario.html"