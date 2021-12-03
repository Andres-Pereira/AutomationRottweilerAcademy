Feature: Using the shopping cart
  In order to list the products I want to adquire
  As a Rottweiler Academy subscribed user
  I want to add or remove items in my cart

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"
    And I put my user name
    And I put my password
    And I press the button "Acceder"
    And I press the button "Cursos"

  @Addcart
  Scenario: Sign up to a course that costs money
    Given I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button "Apuntarme"
    And I press the button "Añadir al carrito"
    Then the course should be added to the cart

  @AddRepeat
  Scenario: Sign up to a course that is already added
    Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
    When I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button "Apuntarme"
    And I press the button "Añadir al carrito"
    Then the error is thrown: "No puedes añadir otro «Curso completo de Photoshop desde Cero» a tu carrito."

  @removeCart
  Scenario: Remove an item from the cart
    Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
    And I press the button "Ver carrito"
    When I press the button "X"
    Then we should see the empty cart message "Tu carrito está vacío"

  @viewEmptyCart
  Scenario: View my empty shopping cart
    When I press the button "Cart"
    Then we should see the empty cart message "No hay productos en el carrito."
