*** Settings ***
Library    AppiumLibrary
Resource    ../variables/phoneinfo.robot
Resource    ../variables/demoappvariables.robot
#Resource    ../variables/calculatorvariables.robot

*** Keywords ***
start
     Open Application    http://localhost:4723/wd/hub	platformName=${platform}	platformVersion=${android_version}	deviceName=${a22_ip}    appPackage=${demoapp_package}    appActivity=${demoapp_main_activity}    automationName=UiAutomator2
    #for demo login application
     #Open Application    http://localhost:4723/wd/hub	platformName=${platform}	platformVersion=${android_version}	deviceName=${a22_ip}    appPackage=${calculator_package}    appActivity=${calculator_activity}    automationName=UiAutomator2
    #for calculator application 
    Set Appium Timeout     20s 
stop
    Close Application

