Feature: View the content of a course
  In order to study a course
  As a Rottweiler Academy user subscribed to a course
  I want to access to the content of the course

  Scenario: Access to a course content without been logged
    Given that I am in the section "courses"
    When I press on "Curso básico de Robótica con Arduino"
    And I hover on the course content "Introduccion a arduino"
    Then the message "Actualmente no tienes acceso a este contenido" is shown

  Scenario: Access to a course in wich I'm not subscribed
    Given that I am logged
    And that I am in the section "courses"
    When I press on "Curso básico de Robótica con Arduino"
    And I hover on the course content "Introduccion a arduino"
    Then the message "Actualmente no tienes acceso a este contenido" is shown

  Scenario: Access to a course content in wich I am subscribed
    Given that I am logged
    And that I am in the section "courses"
    And I am subscribed to the course "Curso básico de Robótica con Arduino"
    When I press on "Curso básico de Robótica con Arduino"
    And press the course content "Introduccion a arduino"
    Then the first lesson from the course will be shown
