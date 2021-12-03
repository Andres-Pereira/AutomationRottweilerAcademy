Feature: Using the shopping cart
  In order to list the products I want to adquire
  As a Rottweiler Academy subscribed user
  I want to have a shopping cart before paying

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"
    And I put my user name
    And I put my password
    And I press the button "Acceder"

  @viewEmptyCart
  Scenario: View my empty shopping cart
    When I press the button "Cart"
    Then we should see the empty cart message "No hay productos en el carrito."

  @removeCart
  Scenario: Remove an item from the cart
    Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
    And I press the button "Ver carrito"
    When I press the button "X"
    Then we should see the empty cart message "Tu carrito está vacío"
