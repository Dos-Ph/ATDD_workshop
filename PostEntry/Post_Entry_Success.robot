*** setting ***
Library        Selenium2Library
Test Setup    Open Browser     ${HOME_PAGE}    firefox
#Test Setup     Go to Login page
# Test Teardown     Close Browser
Resource        ../resource.robot                   #relative path

*** Test Cases ***
Post Entry Success
  Login success Not Rememberme
  Maximize Browser Window
  Wait Until Element Is Visible    //*[@id="menu-posts"]/a/div[3]
  Click Element    //*[@id="menu-posts"]/a/div[3]
  Go to    https://sprint3r10.wordpress.com/wp-admin/post-new.php
  Wait Until Page Contains    Add New Post
  Input Text    title    The winter is coming
  Select Frame    content_ifr
  Input Text    tinymce   "Do you think John Snow die or not"
  Unselect Frame

  Click Element    insert-media-button
  Wait Until Page Contains    Insert Media
  Click Element    css=div.attachment-preview
  Click Element    css=button.media-button
  # Wait Until Page Does Not Contain    Create Gallery    10
  Click Element    publish
  Wait Until Page Contains    Post published. View post
  Click Link    View post

#=========================================
Delete Post Entry
  Go to    https://sprint3r10.wordpress.com/wp-admin
  Wait Until Element Is Visible    //*[@id="menu-posts"]/a/div[3]    20
  Click Element    //*[@id="menu-posts"]/a/div[3]
  Mouse Over    css=td.title
  # Wait Until Element Is Visible    Trash
  Click Element    css=a.submitdelete
