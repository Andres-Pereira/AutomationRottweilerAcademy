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
    Then an email should be sent to the email "xxx@gmail.com"

  Scenario: Reset password without puting an email
    Given that I am in the lost password section
    And there is an account linked to the email "xxx@gmail.com"
    When I press the button "Solicitar enlace de restablecimiento"
    Then an message "Error: Por favor, introduce un nombre de usuario o una dirección de correo electrónico." should be thrown
