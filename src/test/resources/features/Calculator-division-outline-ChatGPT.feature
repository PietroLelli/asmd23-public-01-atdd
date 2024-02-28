Feature: Calculator Division
  In order to not learn math
  As someone who is bad at math
  I want to be able to divide numbers using a Calculator

  Scenario Outline: Divide two numbers
    Given I have a Calculator
    When I divide <arg0> by <arg1>
    Then the quotient should be <arg2>
    Examples:
      | arg0      | arg1        | arg2    |
      | 6         | 2           | 3      |
      | -8        | -2          | 4      |
      | 9         | -3          | -3     |
