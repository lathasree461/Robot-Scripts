*** Settings ***
Library  ../Library/addition.py
Library  ../Library/csvreader.py

*** Keywords ***
Calculate Addition
   [Arguments]  ${arg1}  ${arg2}
   ${result} =  addition demo  ${arg1}  ${arg2}
   [Return]  ${result}

Open CSV File
   [Arguments]  ${filename}
   ${fileob} =  open csv file from device  ${filename}
   [Return]  ${fileob}

Read First Line From File
   [Arguments]  ${fileobject}
   ${line} =  read first line from device  ${fileobject}
   [Return]  ${line}

Close CSV File
   [Arguments]  ${fileobject}
   close csv file from device  ${fileobject}
