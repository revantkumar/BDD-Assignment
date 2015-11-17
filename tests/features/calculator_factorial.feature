Feature: Acceptance Test for the
  factorial() function of Calculator
 
  Scenario: Calculate factorial of 3 on our calculator
    Given I am using the calculator
    When I input factorial "3"
    Then I should see "6"
 
  Scenario Outline: Find the factorial of a number
    Given I am using the calculator
    When I input factorial "<input>"
    Then I should see "<output>"

  Examples:
    | input  | output |
    | 0      | 1      |
    | 2      | 2      |
    | 3      | 6      |
	  | -1     | None   |
