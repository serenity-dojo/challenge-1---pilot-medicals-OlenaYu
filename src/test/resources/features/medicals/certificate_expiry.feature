Feature: Medical certificate expiration
  As a Federal Aviation Administration representative
  I want to track medical certifications expiration dates
  So that to encourage pilots not to have their license to be downgraded

  Rule: The 1st class pilots under 40 drop to the 3rd Class for 4 years after 12 months if not renewed;
  pilots at 40 and above drop to the 2nd Class for 6 months after 6 months if not renewed

    Scenario Outline:  License expiration for the 1st Class pilots

      Given Sam is a 1st Class pilot born on <Birth Date>
      And He is <Age Category>
      When His last examination date was on <Last Examination>
      And Current date is <Current Date>
      Then Sam's license drops to the <New Category>
      And his next examination date should be no later than <Next Examination>

      Examples:
        |  Birth Date     |Age Category|Last Examination | Current Date    |New Category| Next Examination |
        | March 03 1999   |Under 40    |September 27 2000| November 1 2001 |3rd Class   | September 31 2005|
        | December 13 1978|Above 40    |December 08 2023 | July 1 2024     |2nd Class   | December 31 2024 |
        | October 22 1983 |Exactly 40  |November 17 2023 | May 1 2024      |2nd Class   | November 31 2024|

  Rule: The 2nd class pilots under 40 drop to 3rd Class for 48 months after 12 months if not renewed;
  pilots at 40 and above drop to the 3rd Class for 12 months after 12 months if not renewed

    Scenario Outline:  Medical certificate expiration for the 2nd Class pilots

      Given Tom is a 2nd Class pilot born on <Birth Date>
      And He is <Age Category>
      When His last examination date was on <Last Examination>
      And Current date is <Current Date>
      Then Sam's license drops to the <New Category>
      And his next examination date should be no later than <Next Examination>

      Examples:
        |  Birth Date     |Age Category|Last Examination | Current Date    |New Category| Next Examination |
        | March 03 1999   |Under 40    |September 27 2000| November 1 2001 |3rd Class   | September 31 2002|
        | December 13 1978|Above 40    |December 08 2001 | January 1 2002  |3rd Class   | December 31 2003 |
        | October 22 1983 |Exactly 40  |November 17 2002 | December 1 2003 |3rd Class   | November 31 2004 |

  Rule: The 3rd class pilots will lose their licence after its expiration and cannot fly regardless the age

    Scenario Outline:  Medical certificate expiration for the 3rd Class pilots

      Given Jack is a 3rd Class pilot born on <Birth Date>
      And He is <Age Category>
      When His last examination date was on <Last Examination>
      And Current date is <Current Date>
      Then Jack's license drops to overdue

      Examples:
        |  Birth Date     |Age Category|Last Examination | Current Date    |
        | March 03 1999   |Under 40    |September 27 2000| November 1 2005 |
        | December 13 1978|Above 40    |December 08 2001 | January 1 2003  |
        | October 22 1983 |Exactly 40  |November 17 2002 | December 1 2004 |

