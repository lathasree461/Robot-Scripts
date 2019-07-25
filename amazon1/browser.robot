*** Settings ***
Documentation  "Test Browsers"
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Test browser open close
     [Documentation]  "This is a test for opening and closing a browser"
     [Tags]  tag1
     Open Browser  https://www.amazon.in/  browser=firefox
     Wait Until Page Contains  Your Amazon.in
     Sleep  3s
     Close Browser

Test case to search product in amazon
     [Documentation]  This is a test for opening browser and search product
     [Tags]  tag2
     Open Browser   https://www.amazon.in/  browser=firefox
     Wait Until Page Contains  Your Amazon.in
     Input Text   id=twotabsearchtextbox  Ferrari 458
     Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
     Wait Until Page Contains   results for "Ferrari 458"
     Sleep  3s
     Close Browser

Test Case to add the search product to cart in amazon
    [Documentation]     "This is test for opening browser and add search product to cart in amazon site"
    [Tags]  tag3
    Open Browser    https://www.amazon.in/   browser=firefox
    Wait Until Page Contains  Your Amazon.in
    Input Text      id=twotabsearchtextbox  Ferrari 458
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Image  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Select Window  NEW
    Wait Until Page Contains   ToysCentral Ferrari 458 Speciale A 1:24 Scale Remote Controlled Car, Officially Licensed Rastar Model, Red
    Click Button   name=submit.add-to-cart
    Wait Until Page Contains  Added to Cart
    Sleep  3s
    Close Browser

Test Case to open sign in page in amazon
    [Documentation]     "This is test for opening sign in page in amazon site"
    [Tags]  tag4
    Open Browser    https://www.amazon.in/   browser=firefox
    Wait Until Page Contains  Your Amazon.in
    Input Text      id=twotabsearchtextbox  Ferrari 458
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Image  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Select Window  NEW
    Wait Until Page Contains   ToysCentral Ferrari 458 Speciale A 1:24 Scale Remote Controlled Car, Officially Licensed Rastar Model, Red
    Click Button   name=submit.add-to-cart
    Wait Until Page Contains  Added to Cart
    Click Button   name=proceedToCheckout
    Wait Until Page Contains  Login
    Sleep  3s
    Close Browser

