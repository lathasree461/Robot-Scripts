*** Settings ***
Resource  Resources/LibraryResource.robot
*** Variables ***
${CSV_FILENAME} =  Resources/DemoCSVFile.csv
#robot -d Results -i currentRun Tests/Libraryimport.robot

*** Test Cases ***
Validated Successful addition of numbers
   [Documentation]  Test case to validate user define library import
   [Tags]  lastrun
   ${param1} =  set variable  2
   ${param2} =  set variable  3

   ${value1} =  convert to number  ${param1}
   ${value2} =  convert to number  ${param2}

   ${result} =  Calculate Addition  ${value1}  ${value2}
   should be equal as numbers  5  ${result}

Read from CSV file
   [Documentation]  This is a test to read from CSV file
   [Tags]  currentRun
   ${fileob} =  Open CSV File  ${CSV_FILENAME}
   should not be equal  ${None}  ${fileob}

   ${line} =  Read First Line From File  ${fileob}
   ${length} =    Get Length    ${line}
    : FOR    ${i}    IN RANGE    0    ${length}
    \    Should Be Equal    ${line[${length-1}]}    value13
   should not be empty  ${line}
   Close CSV File  ${fileob}

