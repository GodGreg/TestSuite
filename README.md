# TestSuite
A bash file that tests your TestSuite

Usage: ./testSuite SuiteFile Executable

SuiteFile: Contains all the names of your tests (strings) seperated by whitespace
Executable: Your compiled program

Example: "TestEx"

TestEx.args - Arguments suplied to the command line - ignored if empty or doesn't exist
TestEx.in - Fed as an input stream into the program - can be empty
TestEx.out - The expected output from the output stream of the program
TestEx.actual - A temp file that stores the actual output of the program before comparing it to the .out file (Will be removed in later updates)

