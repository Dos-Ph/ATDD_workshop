*** setting ***
Library        Selenium2Library
Test Setup    Open Browser     ${HOME_PAGE}    firefox
#Test Setup     Go to Login page
Test Teardown     Close Browser
Resource        ../resource.robot                   #relative path

*** Test Cases ***
Test success case Not Rememberme
  Login success Not Rememberme

Test success case Rememberme
  Login success Rememberme
