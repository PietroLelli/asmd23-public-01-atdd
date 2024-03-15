# Lab 01
## Task 1: Calculator
I have experimented with Gherkin functionalities by implementing additions, subtractions, and multiplications, using also background and outline scenario types and applying the ATDD (Acceptance Test-Driven Development) approach.

## Task 2: ATDD-LLM
LLMs/ChatGPT can arguably help in write/improve/complete/implement/reverse-engineer a Gherkin specification. Experiment with
this, based on the above tasks or in other cases. Is ChatGPT useful for all that?

In this task, I used ChatGPT in order to add the Gherking specifications for division to those already developed for the Calculator task. Below are the requests that were made.

### First request:

* For the first step i ask to ChatGPT this request:
>I want to implement a Gherkin specification for a Java application. The application consists of a calculator that puts in two integer values and then obtains the result of the division.
* The answer is:
```gherkin
Feature: Calculator Division

  Scenario: Divide two numbers
    Given the calculator is turned on
    When I input the first number as {firstNumber}
    And I input the second number as {secondNumber}
    And I press the divide button
    Then the result should be {expectedResult} on the screen
```
```java
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.assertEquals;

public class CalculatorStepDefinitions {

    private Calculator calculator;
    private double result;

    @Given("the calculator is turned on")
    public void theCalculatorIsTurnedOn() {
        calculator = new Calculator();
    }

    @When("I input the first number as {double}")
    public void iInputTheFirstNumber(double firstNumber) {
        calculator.setInput1(firstNumber);
    }

    @When("I input the second number as {double}")
    public void iInputTheSecondNumber(double secondNumber) {
        calculator.setInput2(secondNumber);
    }

    @When("I press the divide button")
    public void iPressTheDivideButton() {
        result = calculator.divide();
    }

    @Then("the result should be {double} on the screen")
    public void theResultShouldBeOnTheScreen(double expectedResult) {
        assertEquals(expectedResult, result, 0.001);
    }
}

```
The Gherkin code, substituting {firstNumber}, {secondNumber} and {expectedResult} turns out to be correct, but the step code is incorrect. With a few modifications, however, a working Java code can be obtained that can be integrated with the previously developed calculator implementation.

### Second request
>Create Gherkin specifications for the division to follow these conventions   
     Scenario:  Add two positive numbers  
       Given I have a Calculator  
       When I add 1 and 1  
       Then the sum should be 2
```gherkin
Feature: Calculator Division

  Scenario: Divide two positive numbers
    Given I have a Calculator
    When I divide 6 by 2
    Then the quotient should be 3

```
In this way, by passing previously developed specifications for addition to ChatGPT, it is possible to obtain specifications that follow the conventions of the code already developed and do not require major modifications, but still require modifications to integrate the generated code with the existing code.

### Third request
>Creates Gherkin specifications for divisions between two positive numbers, between two negative numbers and between a positive and a negative number.

```gherkin
Scenario: Divide two positive numbers
    Given I have a Calculator
    When I divide 6 by 2
    Then the quotient should be 3

  Scenario: Divide two negative numbers
    Given I have a Calculator
    When I divide -8 by -2
    Then the quotient should be 4

  Scenario: Divide a positive and a negative number
    Given I have a Calculator
    When I divide 9 by -3
    Then the quotient should be -3

```
### Fourth request
> Modify specifications to follow outline scenarios

```gherkin
Feature: Calculator Division

  Scenario Outline: Divide two numbers
    Given I have a Calculator
    When I divide <numerator> by <denominator>
    Then the quotient should be <result>

    Examples:
      | numerator | denominator | result |
      | 6         | 2           | 3      |
      | -8        | -2          | 4      |
      | 9         | -3          | -3     |


```
In this case, I asked ChatGPT to create the specifications so that they follow the outline scenarios. To make the code work, however, I had to change the variable names to arg0, arg1 and arg2 to ensure that the steps were generated in the correct way (with the function arguments).
