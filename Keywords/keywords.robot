*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/xpath's.py

*** Variables ***
${url}    http://43.204.33.181:8000/
${browser}  headlesschrome

*** Keywords ***
Open FireFox Browser
    open browser    ${url}   ${browser}
    maximize browser window
    #capture element screenshot    ${elem_screenshot}    C:/Users/Meghana/PycharmProjects/RFpageObjectModel/ElementsScreenshots/logo.png
    #capture page screenshot   C:/Users/Meghana/PycharmProjects/RFpageObjectModel/PageScreenshots/loginPage.png
    set selenium speed    2seconds

Enter the UserName
    [Arguments]    ${username}
    input text    ${txt_UserName}   ${username}

Enter the Password
    [Arguments]    ${password}
    input text    ${txt_Password}   ${password}

Click submit button
    click button    ${btn_Submit}

Verify login if it is successful
    page should contain    Transaction Stats

Click Employees Module from the left menu-bar
    click element    ${click_employees}

Click Admin sub-module under the Employees module
    click element    ${click_admin}

Click Add Admin button
    click button    ${click_addAdmin_button}

Click Email field and enter the email id
    [Arguments]    ${email}
    input text    ${click_email_Field}    ${email}

Click Full name field and enter the full name
    [Arguments]    ${fullname}
    input text    ${click_fullname_Field}   ${fullname}

Click phone field and enter the phone number
    [Arguments]    ${phoneNumber}
    input text    ${click_phone_Field}    ${phoneNumber}

Click address field and enter the address
    [Arguments]    ${address}
    input text    ${click_address_Field}    ${address}

Click password field and enter the password
    [Arguments]    ${admin_password}
    input text    ${click_password_Field}    ${admin_password}

Click confirm password field and enter the confirm password
    [Arguments]    ${confirmPassword}
    input text    ${click_confirm_password_Field}   ${confirmPassword}

Click on submit button
    click button    ${click_submit_button}

Close My browser
    close browser