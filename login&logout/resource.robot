*** Variables ***
${HOME_PAGE}           https://sprint3r3.wordpress.com
${USERNAME_FIELD_ID}    user_login
${PASSWORD_FIELD_ID}    user_pass
${SUCCESS_TEXT}         Welcome to WordPress.com!
${ERROR_TEXT}           Error Page

*** Keywords ***
Go to Login page
    goto    ${HOME_PAGE}
    Click Element      //*[@id="masthead"]/button
    Wait Until Element Is Visible      //*[@id="meta-2"]/ul/li[2]/a
    Click Element      //*[@id="meta-2"]/ul/li[2]/a
Fill in valid credential
    Input Text       ${USERNAME_FIELD_ID}    sprint3r3
    Input Password   ${PASSWORD_FIELD_ID}    WorkingSoftware
Uncheck Remember me
    Click Element     rememberme
    Checkbox Should Not Be Selected     rememberme
Fill input
  [arguments]    ${username_input}    ${password_input}
    Input Text       ${USERNAME_FIELD_ID}     ${username_input}
    Input Password   ${PASSWORD_FIELD_ID}     ${password_input}
Click login
    Click Element    wp-submit
Login succeeded
    Wait Until Page Contains     ${SUCCESS_TEXT}
Login failed
    Wait Until Page Contains   ${ERROR_TEXT}
