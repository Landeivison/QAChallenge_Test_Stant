Feature: Function period of life
    As a user
    I want to enter an age
    So that the system returns the period of life

    @period_life
    Scenario: Submit Calculation

        Given access to calculator
        When submit the <age>
        Then the system returns me <period of life>

        Examples:
            | <age> | <period of life> |
            | 1     | "Child"          |
            | 15    | "Child"          |
            | 16    | "Adult"          |
            | 57    | "Adult"          |
            | 60    | "Elderly"        |
            | 65    | "Elderly"        |

    Scenario Outline: Invalid Age

        Given access to calculator
        When submit the <age>
        Then the system returns me: <message>

        Examples:
            | <age> | <message>     |
            | 0     | "Invalid Age" |
            | 1.5   | "Invalid Age" |
            |       | "Enter Age"   |