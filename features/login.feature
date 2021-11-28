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
