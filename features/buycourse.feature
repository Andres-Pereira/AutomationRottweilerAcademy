Feature: Buy the items on my cart
  In order to adquire new courses
  As a Rottweiler Academy subscribed user
  I want to pay for the courses I have in my cart

  Background:
  Given that I am in the home page
  And I press the button "Iniciar sesion"
  And I put my user name
  And I put my password
  And I press the button "Acceder"
  And I press the button "Cart"
  And I press the button "Finalizar compra"

  @wrongBillingData
  Scenario Outline: Paying a course without filling the billing data correctly
    Given I insert the data as shown below
    |Nombre:                |<nombre>    |
    |Apellidos:             |<apellido>  |
    |Dirección de la calle: |<direccion> |
    |Localidad / Ciudad:    |<ciudad>    |
    |Teléfono:              |<telefono>  |
    |Dirección de correo:   |<correo>    |
    And select my region
    When I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And I press the button "Realizar el pedido"
    Then the error is thrown: <error>
    Examples:
    | nombre  | apellido | direccion                 | ciudad    | telefono  | correo                      | error|
    |         | Pereira  | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   | "Facturación Nombre es un campo requerido."                         |
    | Andres  |          | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   | "Facturación Apellidos es un campo requerido."                      |
    | Andres  | Pereira  |                           | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   | "Facturación Dirección de la calle es un campo requerido."          |
    | Andres  | Pereira  | pasaje fransisco viedma   |           | 77976222  | andres.pereira@ucb.edu.bo   | "Facturación Localidad / Ciudad es un campo requerido."             |
    | Andres  | Pereira  | pasaje fransisco viedma   | Cercado   |           | andres.pereira@ucb.edu.bo   | "Facturación Teléfono es un campo requerido."                       |
    | Andres  | Pereira  | pasaje fransisco viedma   | Cercado   | 77976222  |                             | "Facturación Dirección de correo electrónico es un campo requerido."|
    | Andres  | Pereira  | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb          | "Dirección correo electrónico de facturación no válido"             |

  @bankTransaction
  Scenario: Paying a course with bank transaction
    Given I insert the data as shown below
    |Nombre:                |Andres                    |
    |Apellidos:             |Pereira                   |
    |Dirección de la calle: |pasaje fransisco viedma   |
    |Localidad / Ciudad:    |cercado                   |
    |Teléfono:              |77976222                  |
    |Dirección de correo:   |andres.pereira@ucb.edu.bo |
    And select my region
    When I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And I press the button "Realizar el pedido"
    Then a page with the order details will load
