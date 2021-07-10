Feature: Thermostat Controller
    As a user
    I want a thermostat controller
    So that I can turn the heating on and off according to the temperature variation

    @thermostat
    Scenario: Turning the Heater On and Off

        Given that the temperature is identified
        When the measured temperature is <temperature>
        Then the heater is <function>

        Examples:
            | <temperature> | <function> |
            | 23°C          | "off"      |
            | 28°C          | "off"      |
            | 4°C           | "on"       |
            | 1°C           | "on"       |