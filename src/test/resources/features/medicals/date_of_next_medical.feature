Feature: The date of the next pilot medical examination
  As a pilot
  I want to track my next medical examination date
  So that not to overdue it and ensure I'm allowed to fly

  Rule: The 1st class pilots under 40 should have medical examination every 12 months, pilots at 40 and above - every 6 months

  Scenario Outline: Medical examination for the 1st Class pilots under and above 40

    Given Sam is a 1st Class pilot born on <Birth Date>
    And He is <Age Category>
    When Sam had the last medical examination on <Last Examination>
    Then The next examination should take place no later than <Next Examination>

    Examples:
      |  Birth Date      |Age Category| Last Examination   | Next Examination  |
      | March 03 1999    |Under 40    |  September 27 2023 |  September 30 2024|
      | December 13 1978 |Above 40    |  December 08 2023  |  June 30 2024     |
      | October 22 1983  |Exactly 40  |  November 17 2023  |  May 31 2024      |


  Rule: The 2nd class pilots should have medical examination every 12 months regardless of the age
    Scenario Outline: Medical examination for the 2nd Class pilots

      Given Kevin is a 2nd Class pilot born on <Birth Date>
      And He is <Age Category>
      When Kevin had the last medical examination on <Last Examination>
      Then The next examination should take place no later than <Next Examination>

      Examples:
        |  Birth Date      |Age Category|Last Examination | Next Examination |
        | April 03 1987    |Under 40    |  April 27 2023  |  April 30 2024   |
        | December 13 1956 |Above 40    | December 08 2023|  December 31 2024|
        | October 22 1983  |Exactly 40  | November 17 2023|  November 31 2024|


  Rule: The 3rd class pilots under 40 should have medical examination every 5 years, pilots at 40 and above - every 2 years
    Scenario Outline: Medical examination for the 3rd Class pilots

      Given Ostin is a 3rd Class pilot born on <Birth Date>
      And He is <Age Category>
      When Ostin has the previous medical examination on <Last Examination>
      Then The next examination should take place no later than <Next Examination>

      Examples:
        |  Birth Date      |Age Category| Last Examination | Next Examination |
        | January 03 1988  |Under 40    |   April 27 2022  |  April 30 2027   |
        | December 13 1956 |Above 40    |  December 08 2023|  December 31 2025|
        | October 22 1983  |Exactly 40  |  November 17 2022|  November 31 2024|
