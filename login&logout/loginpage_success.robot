*** setting ***
Library        Selenium2Library
Suite Setup    Open Browser     ${HOME_PAGE}    firefox
#Test Setup     Go to Login page
Suite Teardown     Close Browser
Resource        resource.robot                   #relative path

*** Test Cases ***
Test success case
  Go to Login page
  Fill in valid credential
  Uncheck Remember me
  Click login
  Login succeeded
