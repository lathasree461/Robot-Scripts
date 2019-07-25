*** Settings ***
Library  Collections

*** Variables ***
&{DICVAR} =  item1=value1  item2=value2  item3=value3

*** Test Cases ***
Check Dict Demo
    [Documentation]  This is demo in robot framework
    Log  ${DicVar.item1}
    Log  ${DicVar.item2}
    Log  ${DicVar.item3}
    ${dict_keys} =  Get Dictionary Keys  ${DICVAR}
    Log  ${dict_keys}
    ${dict_values} =  Get Dictionary Values  ${DICVAR}
    Log  ${dict_values}


