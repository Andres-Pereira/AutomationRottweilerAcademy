Feature: View the content of a course
  In order to study a course I am subscribed
  As a Rottweiler Academy subscribed user
  I want to access to the content of the course

  Background:
    Given that I am in the home page
    And I press the button "Iniciar sesion"
    And I put my user name
    And I put my password
    And I press the button "Acceder"
    And I press the button "Cursos"

  @unsubscribedCourse
  Scenario: Access to a course in wich I'm not subscribed
    When I press on the course "Adobe illustrator"
    Then the content access should be locked with the message "Actualmente no tienes acceso a este contenido"

  @subscribedCourse
  Scenario: Access to a course content in wich I am subscribed
    Given I am subscribed to the course "Curso básico de Robótica con Arduino"
    And I press on the course "Curso básico de Robótica con Arduino"
    And press the course content "Introduccion a arduino"
    Then the first video from the course will be shown
