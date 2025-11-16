Feature: Verificación de identidad de personal de salud
Como ciudadano cauteloso
Quiero ingresar el DNI del brigadista en la app
Para confirmar que es personal autorizado antes de permitirle ingresar a mi vivienda

Background:
    Given que el usuario se encuentra en la sección "Servicios Ciudadanos" de "index.html"

Scenario: Verificación exitosa de brigadista
    Given que el brigadista con DNI "87654321" está registrado y activo en el sistema
    When el usuario ingresa "87654321" en el campo "DNI del personal"
    And hace clic en el botón de búsqueda (ícono de lupa)
    Then el sistema debe mostrar un mensaje o indicador verde de "Personal Verificado" 

Scenario: DNI no encontrado o personal no autorizado
    Given que el número "00000000" no corresponde a ningún brigadista registrado
    When el usuario ingresa "00000000" en el campo "DNI del personal"
    And hace clic en el botón de búsqueda

    Then el sistema debe mostrar una alerta roja indicando "Personal No Autorizado" 
