# TestSuite
A bash file that tests your TestSuite
  - V1 has more detailed failed test messages
  - V2 has a cleaner display and is useful for lots of repeated and automated testing

Usage
----------------------------------------------------------------------------------------------------------------------------------------
Usage: ./testSuite SuiteFile Executable

SuiteFile: Contains all the names of your tests (strings) seperated by whitespace
(Example: test1 test2 test3)

Executable: Your compiled program


Files associated with testing
----------------------------------------------------------------------------------------------------------------------------------------
Example Usage: "TestEx"

TestEx.args - Arguments suplied to the command line - ignored if empty or doesn't exist. 
TestEx.in - Fed as an input stream into the program - can be empty. Uses a .in file for each file listed in SuiteFile (Ex. test1.in)
TestEx.out - The expected output from the output stream of the program
TestEx.actual - A temp file that stores the actual output of the program before comparing it to the .out file (Will be removed in later updates)



A explanation of the example files
----------------------------------------------------------------------------------------------------------------------------------------
If we have a an executable called "Run" and a SuiteFile called "suite" containing "Test1 Test2". Then runSuite will run a test for both Test1 and Test2. 

You are responsible for creating any .in and .args files. RunSuite will use Test1.in and Test1.args, execute your program and pipe the output to Test1.actual.

You are also responsbile for creating a Test1.out file which contains the expected output, this will be compared with the actual output and RunSuite will tell you if the test failed or passes, if it fails it will give you details or input, args, expected and actual text as well as any messages printed to stdOut.


