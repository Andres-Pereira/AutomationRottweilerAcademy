Feature: Log-In to Rottweiler Academy
  In order to get into my account
  As a Rottweiler Academy subscribed user
  I want a login section that verifies correctly my credentials

  Background:
    Given that I am in the login section

  @wrongCredentials
  Scenario: Login with wrong credentials
    Given I put the username <user>
    And the password <pass>
    When I press the button "Acceder"
    Then an <error> message should be thrown
    Examples:
      | user        | pass            | error                                                                                        |
      | "diegoupb"  | "diego1.hola"   | "Error: El nombre de usuario diegoupb no está registrado en este sitio."                     |
      | "diegoucb"  | "diego1"        | "Error: la contraseña que has introducido para el nombre de usuario diegoucb no es correcta."|
      | "        "  | "diego1.hola"   | "Error: el campo del nombre de usuario está vacío."                                          |
      | "diegoucb"  | "           "   | "Error: el campo de la contraseña está vacío."                                               |

    @correctCredentials
    Scenario: Login with valid credentials
    And I put the user "diegoucb"
    And I put the password "diego1.hola"
    When I press the button "Acceder"
    Then the Rottweiler Academy homepage will load with my account logged.
