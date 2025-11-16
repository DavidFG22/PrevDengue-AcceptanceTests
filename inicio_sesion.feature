Feature: Autenticación de usuario
Como usuario registrado
Quiero poder iniciar sesión de forma rápida usando mi correo y contraseña
Para acceder inmediatamente a mis reportes y funciones del sistema

Background:
    Given que el usuario se encuentra en la página "login.html"

Scenario: Inicio de sesión exitoso
    Given que existe un usuario registrado con correo "usuario@prevdengue.com" y contraseña "123456"
    When el usuario ingresa "usuario@prevdengue.com" en el campo "Correo electrónico o celular"
    And ingresa "123456" en el campo "Contraseña"
    And hace clic en el botón "Iniciar Sesión"
    Then el sistema debe validar las credenciales
    And redirigir al usuario a la página principal "index.html" con la sesión activa 

Scenario: Error de credenciales (Contraseña incorrecta)
    Given que el usuario ingresa "usuario@prevdengue.com"
    And ingresa una contraseña incorrecta "claveerronea"
    When hace clic en el botón "Iniciar Sesión"
    Then el sistema debe mostrar una alerta "Credenciales incorrectas"
    And debe mantener al usuario en la pantalla de login