*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
*** Variables ***
${calculator_package}    com.sec.android.app.popupcalculator
${calculator_activity}    com.sec.android.app.popupcalculator.Calculator
${calculator_5}    id=com.sec.android.app.popupcalculator:id/calc_keypad_btn_05
${calculator_+}    id=com.sec.android.app.popupcalculator:id/calc_keypad_btn_add
${calculator_=}    id=com.sec.android.app.popupcalculator:id/calc_keypad_btn_equal
${calculator_output_screen}    id=com.sec.android.app.popupcalculator:id/calc_edt_formula

