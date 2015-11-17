Feature: Acceptance Test for the
  volume() function of Calculator
 
  Scenario: Calculate the volume of a rectangular prism given its length, width, and height
    Given I am using the calculator
    When I input "2", "3", and "4"
    Then I should see "24"

 
  Scenario Outline: Calculate the volume of a shape given length, width, and height
    Given I am using the calculator
    When I input "<length>", "<width>", and "<height>"
    Then I should see "<output>"

  Examples:
    | length | width  | height | output |
    | 1      | 1      | 1      | 1      |
    | 1      | 2      | 3      | 6      |
    | 2      | 5      | 3      | 30     |
