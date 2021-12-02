Feature: Sign up to a Rottweiler Academy course
  In order to get access to the content of a course
  As a Rottweiler Academy subscribed user
  I want to sign up to a course I'm interested

  Background:
    Given that I am in the home page
    And I press the "Iniciar sesion" button
    And I insert valid credentials
    And I press the button "Acceder"
    And I go to the section "Cursos"

  @SignUpFree
  Scenario: Sign up to a free course
    Given I press on the course "Curso básico de Robótica con Arduino"
    When I click on 'Apuntarme'
    Then the course should be added to the list "Mi cursos"

  @SignUpMoney
  Scenario: Sign up to a course that costs money
    Given I press on the paid course "Curso completo de Photoshop desde Cero"
    And I click on 'Apuntarme'
    And I press the option 'Añadir al carrito'
    Then the course should be added to the cart

  @SignUpRepeat
  Scenario: Sign up to a course that is already added
    Given I am subscribed to the course "Curso completo de Photoshop desde Cero"
    When I press on the paid course "Curso completo de Photoshop desde Cero"
    And I click on 'Apuntarme'
    And I press the option 'Añadir al carrito'
    Then the error is thrown: "No puedes añadir otro «Curso completo de Photoshop desde Cero» a tu carrito."

  @myCourses
  Scenario: See the courses that I am subscribed
    Given I am subscribed to the course "Curso básico de Robótica con Arduino"
    When I press the tab "Mi cursos"
    Then the course "Curso básico de Robótica con Arduino" should appear in my courses list
