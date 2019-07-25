*** Variables ***
${MY_VALUE} =  "abcd my name"

*** Test Cases ***
Test Regular Expression
    Validate Input String   ${MY_VALUE}

*** Keywords ***
Validate Input String
     [Arguments]  ${input}
     Should Match Regexp  ${input}   "abcd.*"
