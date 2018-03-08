# TestSuite
A bash file that tests your TestSuite
  - V1 has more detailed failed test messages
  - V2 has a cleaner display and is useful for lots of repeated and automated testing

Usage
----------------------------------------------------------------------------------------------------------------------------------------
Usage: ./testSuite SuiteFile Executable

SuiteFile: Contains all the names of your tests (strings) separated by whitespace
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
We are given two tests "Example" and "Error". Both are listed inside the ExampleSuite file

You are responsible for creating any .in, .args and .out files. RunSuite will use Example.in and Example.args, execute your program and pipe the output to Example.actual. It will then compare the Example.actual file with the Example.out file and determine if the test fails or passes. The output from this test can be seen in ExampleTestOutput.

If a test fails it will give you details of input, args, expected and actual text as well as any error messages printed to stdErr. If you use V2 then you will have less output and a more concise error message. 


