*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Opening browser with Amazon
    [Arguments]   ${browser}
    [Arguments]   ${login url}
    Open Browser  ${login url}  ${browser}
    Wait Until Page Contains   Your Amazon.in
Search Text in browser
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"