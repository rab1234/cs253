Feature: User Signup

  In order to 
  As a user
  I want to

  Scenario: 1. Allow user to signup to website
    Given I am on the signup page
    Then I should see "Create Login"
    When I fill in "username" with "rab" 
    And I fill in "password" with "123"
    And I fill in "pw_conf" with "123"
    And I fill in "email" with "rab@uslex.net"
    And I press "Submit"
    Then I should see "Welcome!"  

