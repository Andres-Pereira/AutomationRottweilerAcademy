Feature: Create an account in Rottweiler Academy
  In order to get access to the Rottweiler Academy courses
  As a person who wants to join the Rottweiler Academy community
  I want a feature that helps me create an account

  Scenario: Create an account successfully
    Given that I am in the register section
    When I put the email "andy_gmr16@gmail.com"
    When I put the password "andy1213"
    And confirm my password "andy1213"
    And put the name "Andres"
    And put the last name "Pereira"
    And put the username "andrespereira1"
    And I press the button "Crear una cuenta"
    Then a page will load with the message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
    And an email to confirm the account will be send

  Scenario: Create an account without filling the email box
    Given that I am in the register section
    When I put the password "andy1213"
    And confirm my password "andy1213"
    And put the name "Andres"
    And put the last name "Pereira"
    And put the username "andrespereira"
    And I press the button "Crear una cuenta"
    Then a message "Por favor, introduce una dirección de correo electrónico válida." will be thrown

  Scenario: Create an account without filling password
    Given that I am in the register section
    When I put the email "andrewalen16@gmail.com"
    And put the name "Andres"
    And put the last name "Pereira"
    And put the username "andrespereira"
    And I press the button "Crear una cuenta"
    Then a message "Asegúrese de ingresar su contraseña dos veces." will be thrown

  Scenario: Create an account confirming my password wrong
    Given that I am in the register section
    When I put the email "andrewalen16@gmail.com"
    When I put the password "andy1213"
    And confirm my password "andy12"
    And put the name "Andres"
    And put the last name "Pereira"
    And put the username "andrespereira"
    And I press the button "Crear una cuenta"
    Then a message "Las contraseñas ingresadas no coinciden." will be thrown

  Scenario: Create an account with an email that has a  Rottweiler Academy account linked
    Given that I am in the register section
    And the email "andrewalen16@gmail.com" has an account linked
    When I put the email "andrewalen16@gmail.com"
    When I put the password "andy1213"
    And confirm my password "andy1213"
    And put the name "Andres"
    And put the last name "Pereira"
    And put the username "andrespereira"
    And I press the button "Crear una cuenta"
    Then a message "Lo siento, esta dirección de email ya está en uso" will be thrown

  Scenario: Create an account with a username that has a  Rottweiler Academy account linked
      Given that I am in the register section
      And the username "andrespereira" has an account linked
      When I put the email "andrewalen16@gmail.com"
      When I put the password "andy1213"
      And confirm my password "andy1213"
      And put the name "Andres"
      And put the last name "Pereira"
      And put the username "andrespereira"
      And I press the button "Crear una cuenta"
      Then a message "Nombre de Usuario ya se ha tomado." will be thrown

  Scenario: Create an account without filling a last name
      Given that I am in the register section
      When I put the email "andrewalen16@gmail.com"
      When I put the password "andy1213"
      And confirm my password "andy1213"
      And put the name "Andres"
      And put the username "andrespereira"
      And I press the button "Crear una cuenta"
      Then a message "Este es un campo obligatorio." will be thrown

  Scenario: Create an account without filling a name
      Given that I am in the register section
      When I put the email "andrewalen16@gmail.com"
      When I put the password "andy1213"
      And confirm my password "andy1213"
      And put the last name "Pereira"
      And put the username "andrespereira"
      And I press the button "Crear una cuenta"
      Then a message "Este es un campo obligatorio." will be thrown

  Scenario: Create an account without filling a username
      Given that I am in the register section
      When I put the email "andrewalen16@gmail.com"
      When I put the password "andy1213"
      And confirm my password "andy1213"
      And put the name "Andres"
      And put the last name "Pereira"
      And I press the button "Crear una cuenta"
      Then a message "Este es un campo obligatorio." will be thrown
