Feature: Calculator
  As a young ambitious developer
  I want to experiment with Cucumber
  And add some numbers together

  Scenario: Add two numbers together
    Given I have a calculator
    And I have the number 5
    And I have the number 7
    When I add them together
    Then I should see 12 on the terminal

  Scenario: Subtract two numbers
    Given I have a calculator
    And I have the number 7
    And I have the number 5
    When I subtract them
    Then I should see 2 on the terminal

  Scenario: Multiply three numbers
    Given I have a calculator
    And I have the number 3
    And I have the number 4
    And I have the number 5
    When I multiply them
    Then I should see 60 on the terminal
