Feature: Visibilidad de Contraseña en Login
Como usuario que se registra o inicia sesión
Quiero poder ver la contraseña que estoy escribiendo
Para asegurarme de que no estoy cometiendo errores tipográficos.

Scenario: Usuario revela y oculta la contraseña
    Given que el usuario se encuentra en la página "login.html"
    And ha ingresado "miClaveSecreta" en el campo "Contraseña"
    And el campo "Contraseña" es de tipo "password"
    When el usuario hace clic en el icono "ojo" (toggle-password)
    Then el campo "Contraseña" debe cambiar a tipo "text"
    And el icono debe cambiar a "ojo tachado"

Scenario: Usuario oculta la contraseña después de revelarla
    Given que el campo "Contraseña" es de tipo "text"
    When el usuario hace clic en el icono "ojo tachado"
    Then el campo "Contraseña" debe cambiar a tipo "password"
    And el icono debe cambiar a "ojo"