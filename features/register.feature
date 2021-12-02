Feature: Create an account in Rottweiler Academy
  In order to get access to the Rottweiler Academy courses
  As a person who wants to join the Rottweiler Academy community
  I want a feature that helps me create an account

  Background:
    Given that I am in the home page
    And I press the button "Registrarse"

  @createAccount
  Scenario: Create an account successfully
    Given I enter the fields as shown below
    |Email:     |andres.pereira5@gmail.com|
    |Password:  |diego1.hola              |
    |Confirm:   |diego1.hola              |
    |Name:      |Andres                   |
    |Last Name: |Pereira                  |
    |User Name: |andrespereira7           |
    When I press the button "Crear una cuenta"
    Then a page will load with the message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."

  @createAccountWrongData
  Scenario Outline: Create an account without filling a required
  Given I enter the fields as shown below
  |Email:     |<email>    |
  |Password:  |<password> |
  |Confirm:   |<confirm>  |
  |Name:      |<name>     |
  |Last Name: |<lastname> |
  |User Name: |<username> |
  When I press the button "Crear una cuenta"
  Then the error is thrown: <error>
  Examples:
  | email                     | password      | confirm       | name     | lastname  | username | error                                                              |
  |                           | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     | "Por favor, introduce una dirección de correo electrónico válida." |
  | andres.per@gmail.com      |               | diego1.hola   | Andres   | Pereira   | andy     | "Asegúrese de ingresar su contraseña dos veces."                   |
  | andres.per@gmail.com      | diego1.hola   | diego1        | Andres   | Pereira   | andy     | "Las contraseñas ingresadas no coinciden."                         |
  | andres.pereira@ucb.edu.bo | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     | "Lo siento, esta dirección de email ya está en uso"                |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   | Pereira   | diegoucb | "Nombre de Usuario ya se ha tomado."                               |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   |           | andy     | "Este es un campo obligatorio."                                    |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   |          | Pereira   | andy     | "Este es un campo obligatorio."                                    |
  | andres.per@gmail.com      | diego1.hola   | diego1.hola   | Andres   | Pereira   |          | "Este es un campo obligatorio."                                    |
  | andres.per@gmail          | diego1.hola   | diego1.hola   | Andres   | Pereira   | andy     | "Por favor, introduce una dirección de correo electrónico válida." |
