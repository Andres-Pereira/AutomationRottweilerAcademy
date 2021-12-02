Feature: Log-Out from Rottweiler Academy
  In order to keep my account information secure
  As a Rottweiler Academy logged user
  I want to close my account on this device

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"
    And I insert valid credentials
    And I press the button "Acceder"

  @logout
  Scenario: Logout from a Rottweiler Academy account
    Given I press the button "Andres"
    When I press the button "Cierre de Sesion"
    Then the account should log-out
