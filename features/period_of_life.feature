Feature: Period of life function

    As a user
    I want to enter an age
    For the system to return the life span to me 

    Scenario: Return invalid age

        Given that the user entered the age
        When the age entered is not an integer or zero
        Then the user should see a message stating “AGE INSERTED IS INVALID” 

    Examples:
        | age |     period of life      |
        |  0  | INSERTED AGE IS INVALID |
        | -1  | INSERTED AGE IS INVALID |
        | -2  | INSERTED AGE IS INVALID |

    Scenario: Return period of life to age greater than zero and less than 16 years

        Given that the user entered the age
        When the age entered is an integer greater than zero and less than 16 years
        Then the user should see a message stating “CHILD” 

    Examples:
        | age | period of life |
        |  1  |     CHILD      |
        | 15  |     CHILD      |
       
    Scenario: Return period of life to the age of 16 years or less and less than 60 years

        Given that the user entered the age
        When the age entered is an integer greater than or equal to 16 and less than 60 years
        Then the user should see a message stating "ADULT" 

    Examples:
        | age | period of life |
        | 16  |      ADULT     |
        | 57  |      ADULT     |


    Scenario: Returning to the age of 60 years or older

        Given the user fills in the field with age
        When the age entered is an integer greater than or equal to 60 years
        Then the user should see a message stating “ELDERLY”  


    Examples:
        | age | period of life |
        | 60  |     ELDERLY    |
        | 65  |     ELDERLY    |