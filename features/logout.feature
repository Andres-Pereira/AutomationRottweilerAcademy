Feature: Log-Out from Rottweiler Academy
  In order to keep my account information secure
  As a Rottweiler Academy logged user
  I want to close my account on this device

  Background:
    Given that I am in the home page
    And I press the "Iniciar sesion" button
    And I insert the username "diegoucb"
    And I insert the password "diego1.hola"
    And I press the button "Acceder"

  @logout
  Scenario: Logout from a Rottweiler Academy account
    Given I press the profile button
    When I press the option "Cierre de Sesion"
    Then the account should log-out
