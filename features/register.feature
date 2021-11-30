Feature: Create an account in Rottweiler Academy
  In order to get access to the Rottweiler Academy courses
  As a person who wants to join the Rottweiler Academy community
  I want a feature that helps me create an account

  Background:
    Given that I am in the home page
    And I press the call to action button "Registrarse"

  @createAccount
  Scenario: Create an account successfully
    Given I enter the fields as shown below
    |Email:     |andres.pereira4@gmail.com|
    |Password:  |diego1.hola              |
    |Confirm:   |diego1.hola              |
    |Name:      |Andres                   |
    |Last Name: |Pereira                  |
    |User Name: |andrespereira6           |
    When I press "Crear una cuenta"
    Then a page will load with the message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
    And an email will be sent

  @createAccountWrongData
  Scenario: Create an account without filling a required
  Given I enter the fields as shown below
  |Email:     |<email>    |
  |Password:  |<password> |
  |Confirm:   |<confirm>  |
  |Name:      |<name>     |
  |Last Name: |<lastname> |
  |User Name: |<username> |
  When I press "Crear una cuenta"
  Then a page will load with the message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
  And an email will be sent
  Examples:
  | email                     | password      | confirm       | name     | lastname  | username |
  |                           | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     |
  | andres.per@gmail.com      |               | diego1.hola   | Andres   | Pereira   | andy     |
  | andres.per@gmail.com      | diego1.hola   | diego1        | Andres   | Pereira   | andy     |
  | andres.pereira@ucb.edu.bo | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   | Pereira   | diegoucb |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   |           | andy     |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   |          | Pereira   | andy     |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   | Pereira   |          |
  | andres.per@gmail          | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     |
