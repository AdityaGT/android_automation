*** Settings ***
Library    AppiumLibrary
Resource    ../variables/demoappvariables.robot
*** Keywords ***
login
    AppiumLibrary.Input Text    ${email_entry_box}    dummy@email.com
    AppiumLibrary.Input Text    ${password_entry_box}    12345678
    AppiumLibrary.Click Element    ${login_button}
