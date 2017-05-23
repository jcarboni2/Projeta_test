
@login_out
Feature: Login
  Being a herokuapp user
  So I can validate the login
  To assure that only registered users have access to content

  Background: Load page
    Given I access the page "https://the-internet.herokuapp.com/login"

  @login
  Scenario: TC001 - User Login
    Given I have a registered user
    When I login
    Then I should see the "You logged into a secure area!" login message

  @logout
  Scenario: TC002 - User Logout
    Given I have an authorized user
    When I logout
    Then I should see the "You logged out of the secure area!" logout message
