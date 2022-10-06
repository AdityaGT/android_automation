*** Settings ***
Library    AppiumLibrary
Resource    ../variables/phoneinfo.robot
#Resource    ../variables/apkinfor.robot
Resource    ../variables/calculatorvariables.robot
*** Keywords ***
add numbers  
    #AppiumLibrary.Wait Until Page Contains    ${calculator_+}
    AppiumLibrary.Click Element    ${calculator_5}
    AppiumLibrary.Click Element    ${calculator_+}
    AppiumLibrary.Click Element    ${calculator_5}
    AppiumLibrary.Click Element    ${calculator_=}
    Log    ${calculator_output_screen}
    Sleep    2s
