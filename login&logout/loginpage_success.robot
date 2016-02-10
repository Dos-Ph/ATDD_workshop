*** setting ***
Library        Selenium2Library
Suite Setup    Open Browser     ${LOGIN_PAGE}    firefox
#Test Setup     Go to Login page
Suite Teardown     Close Browser
Resource        resource.robot                   #relative path

*** Test Cases ***
Test success case
  go to    ${LOGIN_PAGE}
  Click Element      //*[@id="masthead"]/button
  Wait Until Element Is Visible      //*[@id="meta-2"]/ul/li[2]/a
  Click Element      //*[@id="meta-2"]/ul/li[2]/a
  Input Text    user_login      sprint3r3
  Input Text    user_pass       WorkingSoftware
  Click Element     rememberme
  Checkbox Should Not Be Selected     rememberme
  Click Element    wp-submit
  Wait Until Page Contains     Dashboard
