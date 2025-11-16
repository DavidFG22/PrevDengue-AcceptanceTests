Feature: Validación visual y bloqueo de cuenta en formulario de Login
Como usuario
Quiero recibir retroalimentación visual clara si cometo un error
Para entender qué debo corregir.

Scenario: Intento de inicio de sesión con campos vacíos
    Given que el usuario está en la página "login.html"
    And el campo "Correo electrónico o celular" está vacío
    And el campo "Contraseña" está vacío
    When hace clic en el botón "Iniciar Sesión"
    Then el borde del input "Correo electrónico o celular" debe cambiar a color rojo
    And el borde del input "Contraseña" debe cambiar a color rojo
    And el sistema debe mostrar el mensaje "Ambos campos son obligatorios"

Scenario: Bloqueo de cuenta por 3 intentos fallidos (HU30 - Acceptance Criteria)
    Given que el usuario está en "login.html"
    And ingresa credenciales incorrectas 3 veces seguidas
    When intenta iniciar sesión por cuarta vez
    Then el sistema debe mostrar un mensaje "Tu cuenta ha sido bloqueada temporalmente por 5 minutos"
    And el botón "Iniciar Sesión" debe aparecer deshabilitado