Feature: User Signup

  In order to 
  As a user
  I want to
  
  Background:
    Given I am on the signup page
    Then I should see "User Signup"

  Scenario: 1. Allow user to signup to website
    When I fill in "username" with "rab" 
    And I fill in "pw" with "123"
    And I fill in "pw_confirmation" with "123"
    And I fill in "email" with "rab@uslex.net"
    And I press "Submit"
    Then I should see "Welcome!"  

  Scenario: 2. User does not provide password
    When I fill in "username" with "rab" 
    And I fill in "pw" with ""
    And I fill in "pw_confirmation" with ""
    And I fill in "email" with ""
    And I press "Submit"
    Then I should see "Password cannot be blank"