Feature: Using the shopping cart
  In order to get the products I want to adquire
  As a Rottweiler Academy subscribed user
  I want to have a shopping cart before paying

  Background:
    Given that I am in the home page
    And I press the "Iniciar sesion" button
    And I insert valid credentials
    And I press the button "Acceder"

  @viewEmptyCart
  Scenario: View my empty shopping cart
    When I press the button with a "cart" icon
    Then we should see the message "No hay productos en el carrito."

  @removeCart
  Scenario: Remove an item from the cart
    Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
    And I click "Ver carrito"
    When I press on the button "X" between the item
    Then a message "Tu carrito está vacío" will be shown
