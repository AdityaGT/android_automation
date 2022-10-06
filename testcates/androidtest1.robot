*** Settings ***
Library    AppiumLibrary
#Resource    ../variables/phoneinfo.robot
#Resource    ../variables/calculatorvariables.robot
#Resource    ../resources/calculator.robot
#Resource    ../variables/demoappvariables.robot
Resource    ../resources/setupandteardown.robot
Resource    ../resources/demologin.robot

Library    DataDriver    ../datafiles/demologin.xlsx

Test Setup    setupandteardown.start
Test Teardown    setupandteardown.stop    

Test Template   complete_login     

*** Test Cases ***
#login to application
        #login
        #Sleep    3s 
        #AppiumLibrary.Page Should Contain Text    User dosen't exist
compleate_login    with    ${username}    ${password}    ${output}



*** Keywords ***
complete_login
    [Arguments]    ${username}    ${password}    ${output}
    AppiumLibrary.Input Text    ${email_entry_box}    ${username}
    AppiumLibrary.Input Text    ${password_entry_box}    ${password}
    AppiumLibrary.Click Element    ${login_button}
    Sleep    1s
    #Element Should Contain     ${error_update}    ${error_message}
    AppiumLibrary.Page Should Contain Text    ${output}