*** Settings ***
Library  String

*** Variables ***

*** Test Cases ***
FOR Loop with list

    :For  ${MyItem}  IN RANGE  1  11
    \  Run Keyword if  ${MyItem} % 2 != 0  Log   ${MyItem}



