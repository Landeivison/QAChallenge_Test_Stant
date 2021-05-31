Feature: Interest rate calculator

    As a customer
    I want to enter a value for my deposit and age
    So that I can include an annual interest rate 

    Scenario: Check customer age

        Given that the customer wants to make a valid deposit
        When the customer enters his age in the system
        Then the system checks whether the customer can deposit or not

    Examples:
        | age | deposit value | age validation |
        | 14  |    100,00     |     false      |
        | 30  |    250,00     |     true       |
    
    Scenario: Fixed interest rate

        Given that the customer is over 60 years old
        When the customer enters a valid deposit amount
        Then the system checks your age
        And it returns a fixed interest rate of 2.0%

    Scenario: Verify that the deposit amount is valid

        Given that the customer enters a deposit value
        When the system checks the data entered
        Then the system should return if the deposit is valid

    Examples:
        | deposit value | valid deposit |
        |     90,00     |     false     |
        |    100,00     |     true      |
        | 10.100,00     |     false     |
        |  8.000,00     |     true      |    

    Scenario: Invalid data

        Given that the customer entered a deposit value
        And the customer entered the age
        When the system verifies that the data entered is invalid
        Then the system should return a message that the age or deposit is invalid.

    Examples:
        | deposit value  | age |         message          |
        |     90.00      | 20  | “Invalid deposit value”  |
        |    100.00      | 14  | “Age entered is invalid” |
        | 10,100.00      | 16  | “Invalid deposit value”  |        

    Scenario: Display annual interest rate

        Given that the customer enters a valid deposit value
        When the system checks the entered value
        Then the system should return an annual interest rate according to the deposit value.

    Examples:
        | deposit value | annual interest rate |
        |     800,00    |        1,0%          |
        |   3.000,00    |        1,3%          |
        |   8.000,00    |        1,5%          |          