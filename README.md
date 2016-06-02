##British English Words challenge##
Problem Description: Create an Object Pascal shared library, suitable for use in a server-side application, that can take a Longint argument in the range 0 to 999,999,999 
inclusive and returns the equivalent number, as a String, in British English words.

#####Sample Data#####
Input       Output

0           zero

1           one

21          twenty one

105         one hundred and five

123         one hundred and twenty three

1005        one thousand and five

1042        one thousand and forty two

1105        one thousand one hundred and five

56945781    fifty six million nine hundred and forty five thousand seven hundred and eighty one

999999999   nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine.

#####Guidelines #####
01.The solution must be correct. Please pay attention to the specific conventions of British English, particularly concerning the use of ‘and’ between certain phrases.

02.The solution is not expected to involve a command line or GUI application – we’re looking for an object-oriented Linux library that could be packaged as a .so and used in a larger application.

03.The solution should not make use of external libraries other than for testing purposes.

04.The solution should demonstrate a candidate’s abilities as a software engineer including, for example, TDD principles, general object-oriented principles and domain modeling principles. 

05.Please submit a solution that captures the business domain for the problem.

06.Git should be used as the versioning control system to demonstrate the progress of the coding.
