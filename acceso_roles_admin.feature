Feature: Redirección por Roles de Usuario
Como personal de salud o funcionario (Segmento 2)
Quiero ser redirigido a mi panel de gestión después de iniciar sesión
Para poder analizar datos y coordinar brigadas inmediatamente.

Scenario: Inicio de sesión de un usuario Ciudadano
    Given que un usuario con rol "Ciudadano" está en "login.html"
    When ingresa sus credenciales válidas y hace clic en "Iniciar Sesión"
    Then el sistema debe redirigir al usuario a "index.html"

Scenario: Inicio de sesión de un usuario Administrador (Médico/Funcionario)
    Given que un usuario con rol "Administrador" está en "login.html"
    When ingresa sus credenciales válidas y hace clic en "Iniciar Sesión"
    Then el sistema debe redirigir al usuario a "admin/dashboard.html"