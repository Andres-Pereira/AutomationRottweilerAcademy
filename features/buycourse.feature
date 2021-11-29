Feature: Buy the items on my cart
  In order to adquire new courses
  As a Rottweiler Academy subscribed user
  I want to pay for the courses I have in my cart

  Scenario: Paying a course with bank transaction
    Given that I am in the section "Finalizar compra"
    When I insert the data as shown below
    And I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And press the button "Realizar el pedido"
    Then a page with the order details will load

  Scenario: Paying a course without pressing the checkbox of terms and conditions
    Given that I am in the section "Finalizar compra"
    When I insert the data as shown below
    And press the button "Realizar el pedido"
    Then the message "Por favor, lee y acepta los términos y condiciones para proceder con tu pedido." will be shown

  Scenario: Paying a course without filling the billing data
    Given that I am in the section "Finalizar compra"
    When I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
    And press the button "Realizar el pedido"
    Then the message "Facturacion <CAMPO> es un campo requerido" will be shown
