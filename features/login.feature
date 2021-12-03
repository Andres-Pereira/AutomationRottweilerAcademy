Feature: Log-In to Rottweiler Academy
  In order to get into my account
  As a Rottweiler Academy subscribed user
  I want a login section that verifies correctly my credentials

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"

  @wrongCredentials
  Scenario Outline: Login with wrong credentials
    Given I put the <username>
    And the <password>
    When I press the button "Acceder"
    Then the error is thrown: <error>
    Examples:
      | username    | password        | error                                                                                        |
      | "diegoupb"  | "diego1.hola"   | "Error: El nombre de usuario diegoupb no está registrado en este sitio."                     |
      | "diegoucb"  | "diego1"        | "Error: la contraseña que has introducido para el nombre de usuario diegoucb no es correcta."|
      | "        "  | "diego1.hola"   | "Error: el campo del nombre de usuario está vacío."                                          |
      | "diegoucb"  | "           "   | "Error: el campo de la contraseña está vacío."                                               |

  @correctCredentials
  Scenario: Login with valid credentials
    Given I put my user name
    And I put my password
    When I press the button "Acceder"
    Then the Rottweiler Academy homepage will load with my account logged.
