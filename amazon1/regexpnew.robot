*** Variables ***
${MY_VALUE} =  "abbbcbcb"
${MY_VALUE1} =  "abcbbc"

*** Test Cases ***
Test Regular Expression
    Validate Input String   ${MY_VALUE}  ${MY_VALUE1}

*** Keywords ***
Validate Input String
     [Arguments]  ${input1}  ${input2}
     Should Match Regexp  ${input1}   "(a|c)*b((b(a|c)*b)*(a|c)*)*"
     Should Match Regexp  ${input2}   "(a|c)*b((b(a|c)*b)*(a|c)*)*"
