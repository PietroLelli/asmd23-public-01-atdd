Feature:  Multiply numbers with a Calculator
  In order to not learn math
  As someone who is bad at math
  I want to be able to add numbers using a Calculator

  Scenario Outline: Multiply two numbers
    Given I have a Calculator
    When I add <arg0> and <arg1>
    Then the multiplication should be <arg2>
    Examples:
      | arg0 | arg1 | arg2 |
      | 1    | 1    | 1    |
      | 3    | 2    | 6    |
      | -2   | -1   | 2    |