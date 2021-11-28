Feature: Using the shopping cart
  In order to get the products I want to adquire
  As a Rottweiler Academy subscribed user
  I want to see and edit the items I have in my cart

  Scenario: View my shopping cart items
    Given that I am in the section "Inicio"
    And I have the item "Como hacer milkshakes" added to my cart
    When I press the button with a cart icon
    And press the option "Ver carrito"
    Then the course "Como hacer milkshakes" will be in my cart

  Scenario: Remove an item from the cart
    Given that I am in the section "carrito"
    And I have the item "Como hacer milkshakes" added to my cart
    When I press on the button "X" between the item
    Then a message "Tu carrito está vacío" will be shown
