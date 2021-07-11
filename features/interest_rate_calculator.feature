Feature: Interest rate calculator
    as user
    I want to enter an amount for my deposit and age
    So that the annual interest rate can be calculated

    @calculator
    Scenario Outline: Calculate interest rate

        Given which access the system
        When submit the <deposit_value> and <age>
        Then see the next <message>

        Examples:
            | <deposit_value> | <age> | <message>                                      |
            | 100,00          | 17    | "Invalid age"                                  |
            | 200,00          | 62    | "2.0% fixed interest rate"                     |
            | 95,00           | 20    | "Minimum deposit amount not reached"           |
            | 11.000,00       | 42    | "You have exceeded the maximum deposit amount" |
            | 200,00          | 23    | "The annual interest rate is 1.0%"             |
            | 2000,00         | 30    | "The annual interest rate is 1.3%"             |
            | 6.000,00        | 55    | "The annual interest rate is 1.5%"             |
            |                 | 60    | "Enter a deposit amount"                       |
            | 250,00          |       | "Enter age"                                    |   