Feature: Buy the items on my cart
  In order to adquire new courses
  As a Rottweiler Academy subscribed user
  I want to pay for the courses I have in my cart

  Background:
  Given that I am in the home page
  And I press the "Iniciar sesion" button
  And I insert valid credentials
  And I press the button "Acceder"
  And I press the button with a "cart" icon

  @bankTransaction
  Scenario: Paying a course with bank transaction
    Given that I click to "Finalizar compra"
    When I insert the data as shown below
    |Nombre:                |Andres                    |
    |Apellidos:             |Pereira                   |
    |Dirección de la calle: |pasaje fransisco viedma   |
    |Localidad / Ciudad:    |cercado                   |
    |Teléfono:              |77976222                  |
    |Dirección de correo:   |andres.pereira@ucb.edu.bo |
    And select my country and region
    And I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And press on Realizar el pedido
    Then a page with the order details will load

  @wrongBillingData
  Scenario: Paying a course without filling the billing data correctly
    Given that I click to "Finalizar compra"
    When I insert the data as shown
    |Nombre:                |<nombre>    |
    |Apellidos:             |<apellido>  |
    |Dirección de la calle: |<direccion> |
    |Localidad / Ciudad:    |<ciudad>    |
    |Teléfono:              |<telefono>  |
    |Dirección de correo:   |<correo>    |
    And select my country and region
    When I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And press on Realizar el pedido
    Then the exception "Facturacion <campo> es un campo requerido" will be shown
    Examples:
    | nombre           | apellido      | direccion                 | ciudad    | telefono  | correo                      |
    |                  | Pereira       | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   |
    | Andres           |               | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   |
    | Andres           | Pereira       |                           | Cercado   | 77976222  | andres.pereira@ucb.edu.bo   |
    | Andres           | Pereira       | pasaje fransisco viedma   |           | 77976222  | andres.pereira@ucb.edu.bo   |
    | Andres           | Pereira       | pasaje fransisco viedma   | Cercado   |           | andres.pereira@ucb.edu.bo   |
    | Andres           | Pereira       | pasaje fransisco viedma   | Cercado   | 77976222  |                             |
    | Andres           | Pereira       | pasaje fransisco viedma   | Cercado   | 77976222  | andres.pereira@ucb          |
