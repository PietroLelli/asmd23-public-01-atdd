Feature:  Subtracting numbers with a Calculator
  In order to not learn math
  As someone who is bad at math
  I want to be able to subtract numbers using a Calculator

  Background: Start with a Calculator
    Given I have a Calculator

  Scenario:  Subtract two positive numbers
    When I add 3 and 1
    Then the subtraction should be 2

  Scenario:  Subtract a positive and negative number
    When I add 2 and -1
    Then the subtraction should be 3

  Scenario:  Subtract two negative numbers
    When I add -2 and -1
    Then the subtraction should be -1
