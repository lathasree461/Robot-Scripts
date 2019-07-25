*** Variables ***
${MY_VALUE} =  200
*** Test Cases ***
Testing a true IF statement
     Run Keyword IF  ${MY_VALUE} > 50  Keyword 1

Testing a false IF statement
     Run Keyword IF  ${MY_VALUE} > 200  Keyword 1

Testing a IF/ELSE statement
     Run Keyword IF  ${MY_VALUE} > 200  Keyword 1
     ...  ELSE  Keyword 2

Testing a IF/ELSE IF/ELSE statement
     Run Keyword If  ${MY_VALUE} > 200  Keyword 1
     ...  ELSE IF  ${MY_VALUE} == 10  Keyword 2
     ...  ELSE  Keyword 3

*** Keywords ***
Keyword 1
   Log   Keyword 1
   Should Be Equal  ${MY_VALUE}  100

Keyword 2
   Log   Keyword 2
   Should Be Equal  ${MY_VALUE}  200

Keyword 3
   Log   Keyword 3
   Should Be Equal  ${MY_VALUE}  300
