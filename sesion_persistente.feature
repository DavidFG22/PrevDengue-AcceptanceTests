Feature: Sesión Persistente (Recordarme)
Como usuario frecuente
Quiero que el sistema me recuerde en este navegador
Para no tener que ingresar mis credenciales cada vez que abro la página.

Scenario: Inicio de sesión con "Recordarme" activado
    Given que el usuario está en "login.html"
    And ingresa credenciales válidas
    And marca la casilla "Recordarme"
    When hace clic en "Iniciar Sesión"
    Then el sistema debe autenticar al usuario
    And debe almacenar un token de sesión persistente (localStorage)

Scenario: Usuario vuelve al sitio con sesión persistente
    Given que el usuario activó "Recordarme" en su sesión anterior
    When el usuario cierra el navegador y vuelve a abrir "index.html"
    Then el usuario debe ser recibido como "Bienvenido, [Nombre]"
    And los botones "Iniciar Sesión" y "Registrar" no deben estar visibles