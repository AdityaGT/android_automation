*** Settings ***
Library    AppiumLibrary
*** Variables ***
${demoapp_package}    highapp.bar.facebooklogindemo
${demoapp_main_activity}    highapp.bar.facebooklogindemo.MainActivity
${email_entry_box}    id=highapp.bar.facebooklogindemo:id/userEmailInput
${password_entry_box}    id=highapp.bar.facebooklogindemo:id/userPasswordInput    
${login_button}    id=highapp.bar.facebooklogindemo:id/login
${signup_button}    id=highapp.bar.facebooklogindemo:id/signup_dont
${main_page}        id:highapp.bar.facebooklogindemo:id/main_parent