# TestSuite
A bash file that tests your TestSuite

Usage: ./testSuite SuiteFile Executable

SuiteFile: Contains all the names of your tests (strings) seperated by whitespace
Example: test1 test2 test3

Executable: Your compiled program



Example Usage: "TestEx"

TestEx.args - Arguments suplied to the command line - ignored if empty or doesn't exist
TestEx.in - Fed as an input stream into the program - can be empty. Uses a .in file for each file listed in SuiteFile (Ex. test1.in)
TestEx.out - The expected output from the output stream of the program
TestEx.actual - A temp file that stores the actual output of the program before comparing it to the .out file (Will be removed in later updates)

