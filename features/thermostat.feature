Feature: Develop a thermostat controller

    As a user
    I want a thermostat controller
    So that I can turn the heating on and off according to the temperature variation

    Scenario: Turn off the thermostat

        Given that the thermostat is on
        When the measured temperature is greater than or equal to 23°C
        Then the thermostat must be turned off

    Examples:
        | temperature | thermostat |
        |     23°C    |  turn off  |
        |     28°C    |  turn off  |

 
    Scenario: Turn on the thermostat

        Given that the thermostat is turned off
        When the measured temperature is less than 5 ° C
        Then the thermostat must be turned on

    Examples:
        | temperature | thermostat |
        |    4 ° C    |  turn on   |
        |    1 ° C    |  turn on   |