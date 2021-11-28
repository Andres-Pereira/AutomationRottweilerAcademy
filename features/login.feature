Feature: Log-In to Rottweiler Academy
  In order to get into my account
  As a Rottweiler Academy subscribed user
  I want a login section that verifies correctly my credentials


  Scenario: Login with correct password and username
    Given that I am in the login section
    And I put the username "diegoucb"
    And the password "diego1.hola"
    When I press the button "Acceder"
    Then the Rottweiler Academy homepage will load with my account logged.

  Scenario: Login correctly with an account that hasn't been activated yet
    Given that I am in the login section
    And I put the username "andrespereira1"
    And the password "andy1213"
    When I press the button "Acceder"
    Then a message "ERROR: Your account has not been activated. Check your email for the activation link. If you have not received an email yet, click here to resend it." will be thrown

  Scenario: Login with correct password but wrong username
    Given that I am in the login section
    And I put the username "diegoupb"
    And the password "diego1.hola"
    When I press the button "Acceder"
    Then a message "Error: El nombre de usuario diegoupb no está registrado en este sitio." will be thrown

  Scenario: Login with correct username but wrong password
    Given that I am in the login section
    And I put the username "diegoucb"
    And the password "diego1"
    When I press the button "Acceder"
    Then a message "Error: la contraseña que has introducido para el nombre de usuario diegoucb no es correcta." will be thrown

  Scenario: Login with correct username but empty password
    Given that I am in the login section
    And I put the username "diegoucb"
    When I press the button "Acceder"
    Then a message "Error: el campo de la contraseña está vacío." will be thrown

  Scenario: Login with correct password but empty username
    Given that I am in the login section
    And I put the password "diego1.hola"
    When I press the button "Acceder"
    Then a message "Error: el campo del nombre de usuario está vacío." will be thrown


Feature: Reset my password
  In order to get into my account
  As a Rottweiler Academy subscribed user that has forgotten his password
  I want a feature that permits me reset my password

  Scenario: Reset password puting a wrong email
    Given that I am in the lost password section
    And there is no account linked to the email "andy1213@gmail.com"
    When I put the email "andy1213@gmail.com"
    And I press the button "Solicitar enlace de restablecimiento"
    Then a message "Error: no hay ninguna cuenta con ese nombre de usuario o dirección de correo electrónico." will be thrown

  Scenario: Reset password puting a correct email
    Given that I am in the lost password section
    And there is an account linked to the email "xxx@gmail.com"
    When I put the email "xxx@gmail.com"
    And I press the button "Solicitar enlace de restablecimiento"
    Then


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



//Emails are not sent
