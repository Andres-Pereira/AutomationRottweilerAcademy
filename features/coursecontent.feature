Feature: View the content of a course
  In order to study a course
  As a Rottweiler Academy user subscribed to this course
  I want to access to the content of the course

  Background:
    Given that I am in the home page
    And I press the "Iniciar sesion" button
    And I insert valid credentials
    And I press the button "Acceder"
    And I go to the section "Cursos"

  @unsubscribedCourse
  Scenario: Access to a course in wich I'm not subscribed
    When I click on the paid course "Adobe illustrator"
    Then the content access should be locked with the message "Actualmente no tienes acceso a este contenido"

  @subscribedCourse
  Scenario: Access to a course content in wich I am subscribed
    Given I am subscribed to the course "Curso básico de Robótica con Arduino"
    When I press the tab "Mi cursos"
    And select the course
    And press the course content "Introduccion a arduino"
    Then the first video from the course will be shown
