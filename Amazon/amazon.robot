*** Settings ***
Documentation  "Test browsers"
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Test browser open close
    [Documentation]  "This is a test for opening and closing a browser"
    Open Browser  https://www.amazon.in browser=chrome
    Wait Until Page Contains   Your Amazon.in
    Sleep 4s
    Close Browser