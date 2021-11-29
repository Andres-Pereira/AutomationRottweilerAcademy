Feature: Log-Out from Rottweiler Academy
  In order to close my account on the actual device
  As a Rottweiler Academy logged user
  I want to log-out from my account

  @logout
  Scenario: Logout from a Rottweiler Academy account
    Given that I am loged
    When I press the profile button
    And press the option "Cierre de Sesion"
    Then the account should log-out
