Feature: Reset my password
  In order to get into my account
  As a Rottweiler Academy subscribed user that has forgotten his password
  I want a feature that permits me reset my password

  Background:
  Given that I am in the home page
  And I press the button "Iniciar sesion"
  And press the text "¿Olvidó la contraseña?"

  @resetPaswordCorrectly
  Scenario: Reset password puting a correct email
    Given there is an account linked to the email "andres.pereira@ucb.edu.bo"
    When I put the email "andres.pereira@ucb.edu.bo"
    And I press the button "Solicitar enlace de restablecimiento"
    Then an email should be sent to the email "andres.pereira@ucb.edu.bo"

  @resetPaswordWrongData
  Scenario Outline: Reset password with a wrong email
    Given I put the email <email>
    When I press the button "Solicitar enlace de restablecimiento"
    Then a message <error> will be thrown
    Examples:
    | email                | error                                                                                       |
    | "andy123@gmail.com"  | "Error: no hay ninguna cuenta con ese nombre de usuario o dirección de correo electrónico." |
    | "                 "  | "Error: Por favor, introduce un nombre de usuario o una dirección de correo electrónico."   |
