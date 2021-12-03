Feature: Sign up to a Rottweiler Academy course
  In order to get access to the content of a course
  As a Rottweiler Academy subscribed user
  I want to sign up to a course I'm interested

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"
    And I put my user name
    And I put my password
    And I press the button "Acceder"
    And I press the button "Cursos"

  @SignUpFree
  Scenario: Sign up to a free course
    Given I press on the course "Curso básico de Robótica con Arduino"
    When I press the button "Apuntarme"
    Then the course should be added to the list "Mi cursos"

  @SignUpMoney
  Scenario: Sign up to a course that costs money
    Given I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button "Apuntarme"
    And I press the button "Añadir al carrito"
    Then the course should be added to the cart

  @SignUpRepeat
  Scenario: Sign up to a course that is already added
    Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
    When I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button "Apuntarme"
    And I press the button "Añadir al carrito"
    Then the error is thrown: "No puedes añadir otro «Curso completo de Photoshop desde Cero» a tu carrito."
