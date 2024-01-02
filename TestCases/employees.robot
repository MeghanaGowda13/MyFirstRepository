*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/keywords.robot

*** Variables ***
${userName}    itsupport@vcnrtech.in
${password}    Shagun@#123
${email}    vcnr789@gmail.com
${fullname}    VCNR World pvt ltd
${phoneNumber}    9978880888
${address}    256 5th cross 9th main Nelamangala
${admin_password}     Vcnrs2@2023
${confirmPassword}    Vcnrs2@2023

*** Test Cases ***
LoginPage_TestCase_TC001
    [Tags]    loginPage
    open firefox browser
    Enter the UserName    ${userName}
    Enter the Password    ${password}
    click submit button
    verify login if it is successful

Employees_Module_TestCase_TC002
    [Tags]    employees_Module
    click employees module from the left menu-bar
    click admin sub-module under the employees module
    click add admin button
    click email field and enter the email id    ${email}
    click full name field and enter the full name    ${fullname}
    click phone field and enter the phone number    ${phoneNumber}
    click address field and enter the address    ${address}
    click password field and enter the password    ${admin_password}
    click confirm password field and enter the confirm password    ${confirmPassword}
    click on submit button

Close the browser after execution done_TestCase_TC003
    [Tags]    close_My_Browser_after_execution
    close my browser