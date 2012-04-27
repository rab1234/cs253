Feature: Implement Caesar Cipher

  In order to 
  As a user
  I want to

  Scenario: 1. Allow user to submit text
    Given I am on the home page
    Then I should see "Caesar Cipher"
    When I fill in "text" with "abcdef" 
    And I press "Submit"
    Then I should see "nopqrs"
    
