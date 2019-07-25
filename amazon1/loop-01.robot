*** Settings ***
Library  String

*** Variables ***


*** Test Cases ***
FOR Loop with Upper Bounds Range
    [Documentation]  This gives us a 0 based range
    [Tags]  tag1
    :FOR  ${INDEX}  IN RANGE  5
    \  Do Something  ${INDEX}
    \  ${Random_String} =  Generate Random String  ${INDEX}
    \  Log  ${Random_String}
FOR Loop with initial and final Bounds
    [Documentation]  No longer a 0 based range because I provided 1 as initial
    [Tags]  tag2
    :FOR  ${INDEX}  IN RANGE  1  5
    \  Do Something  ${INDEX}
    \  ${Random_String} =  Generate Random String  ${INDEX}
    \  Log  ${Random_String}
FOR Loop with start,finish and step Range
    [Documentation]  The counter will jump by 2 each time
    [Tags]  tag3
    :FOR  ${INDEX}  IN RANGE  1  10  2
    \  Do Something  ${INDEX}
    \  ${Random_String} =  Generate Random String  ${INDEX}
    \  Log  ${Random_String}
FOR Loop with list
    [Tags]  tag4
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3
    :For  ${MyItem}  IN  @{ITEMS}
    \  Log  ${MyItem}

Exit a FOR Loop
   @{ITEMS} =  Create List  Item 1  Item 2  Item 3

   :For  ${MyItem}  IN  @{ITEMS}
   \  Log  ${MyItem}
   \  Run Keyword If  "${MyItem}" == "Item 3"  Exit For Loop
   \  Log  Didn't exit yet

   Log  Now we,re out of the loop

Repeat a keyword many times
    [Tags]  tag6
    Repeat Keyword   5  A Repeatable Keyword
    Repeat Keyword   2 times  A Repeatable Keyword
    Repeat Keyword   3 s   A Repeatable Keyword

*** Keywords ***
Do Something
    [Arguments]  ${Passedindex}
    Log  Passed a value at ${Passedindex}!

A Repeatable Keyword
    Log  I am being repeated
