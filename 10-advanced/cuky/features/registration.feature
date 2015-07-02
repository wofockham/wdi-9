Feature: User sign up and registration
  As some jerk
  I want to become a member of the site and add value to the community

  Scenario: A user signs up with valid information
    Given I am on the sign up page
    When I sign up as a user with email "test@example.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@example.com"
    When I login with valid information
    Then I should see "Welcome Back"
