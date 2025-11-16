Feature: Verificación de Cumplimiento Legal
Como usuario de la aplicación
Quiero que mis datos personales estén protegidos
Para garantizar mi privacidad y seguridad al usar PrevDengue 

Scenario: Usuario consulta la Política de Privacidad
    Given que el usuario se encuentra en la página de inicio "index.html"
    And navega hasta el footer de la página
    When hace clic en el enlace "Políticas de Privacidad"
    Then el sistema debe abrir una nueva pestaña o redirigir a la página "politicas.html"

    And debe mostrar el texto completo de la política de privacidad de PrevDengue.
