*** setting ***
Library        Selenium2Library
Suite Setup    Open Browser     ${HOME_PAGE}    firefox
#Test Setup     Go to Login page
Suite Teardown     Close Browser
Resource        ../resource.robot                   #relative path

*** Test Cases ***
Login fail
    [Template]    Test Login fail
    meiy    beauty
    sprint3r3    beauty
    meiy    WorkingSoftware
    ${EMPTY}    WorkingSoftware
    sprint3r3    ${EMPTY}
Login with EMPTY Username and Password Field
    Go to Login Page
    Fill input    ${EMPTY}    ${EMPTY}
    Uncheck Remember me
    Click Login
    Checkbox Should be Selected     rememberme



*** Keywords ***
Test Login fail
  [arguments]     ${username_input}    ${password_input}
    Go to Login page
    Fill input    ${username_input}    ${password_input}
    Click Login
    Check login failed
