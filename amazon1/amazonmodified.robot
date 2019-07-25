*** Settings ***
Documentation  "Test browsers"
Resource  Resources/OpenBrowser.robot
Resource  Resources/CloseBrowser.robot

*** Variables ***
${BROWSER} =   ff
${LOGIN URL} =   https://www.amazon.in

*** Test Cases ***
Test browser open close
    [Documentation]  "This is a test for opening and closing a browser"
    [Tags]  tag1
    Opening browser with Amazon
    Search Text in browser
    Closing browser with Amazon