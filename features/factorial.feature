Feature: Factorial of a number
  As a Mathematician
  I want to generate factorial of a number
  So that I can use it

  Scenario Outline: Calculate factorial of an invalid number
    Given I calculate the factorial of an <invalid_number>
    Then Calculating its factorial should raise an ArgumentError
  Examples:
    | invalid_number |
    | 0              |
    | -3             |
    | dd             |

  Scenario: Calculate factorial of 1
    Given I calculate a factorial of 1
    Then The factorial should be calculated as 1

  Scenario: Calculate factorial of 2
    Given I calculate a factorial of 2
    Then The factorial should be calculated as 2

  Scenario: Calculate factorial of 3
    Given I calculate a factorial of 3
    Then The factorial should be calculated as 6

  Scenario: Calculate factorial of 10
    Given I calculate a factorial of 10
    Then The factorial should be calculated as 3628800

  Scenario Outline: Calculate factorials
    Given I calculate a factorial of <number>
    Then The calculated factorial should be <factorial>
  Examples:
    | number | factorial |
    | 1      | 1         |
    | 2      | 2         |
    | 3      | 6         |
    | 4      | 24        |
    | 10     | 3628800   |

