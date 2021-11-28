Feature: Sign up to a Rottweiler Academy course
  In order to get access to the content of a course
  As a Rottweiler Academy subscribed user
  I want to sign up to a course I'm interested

  Scenario: Sign up to a course without Login
    Given that I am in the section "Courses"
    When I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button 'Apuntarme'
    And I press the button 'Añadir al carrito'
    Then the course should be added to the cart

  Scenario: Sign up to a course that costs money
    Given that I am in the section "Courses"
    When I press on the course "Curso completo de Photoshop desde Cero"
    And I press the button 'Apuntarme'
    And I press the button 'Añadir al carrito'
    Then the course should be added to the cart

  Scenario: See the courses that I am subscribed
    Given that I am in the section "Courses"
    And I am subscribed to the course "Curso básico de Robótica con Arduino"
    When I press on "Mi cursos"
    Then the course "Curso básico de Robótica con Arduino" should appear in my courses list

  Scenario: Sign up to a free course
    Given that I am in the section "Courses"
    When I press on the course "Curso básico de Robótica con Arduino"
    And I press the button 'Apuntarme'
    Then the course should be added to the list "Mi cursos"
