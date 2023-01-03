*** Settings ***
Documentation   Complete Introduction carousel
Library         AppiumLibrary
Library         Collections
Library         BuiltIn
Resource        MobileResources.robot
Test Setup      Open The MyCoach application
Test Teardown   Close Application
*** Test Cases ***
IC1 Next > IC2
    IC1 Next > IC2
IC1 Next to IC2 Skip to IC3
    IC1 Next > IC2 Skip > IC3
IC1 Skip to IC3
    IC1 Skip > IC3
IC1 Next to IC2 Next to IC3
    IC1 Next > IC2 Next > IC3
FIll the onboarding form
    Lake Forest College > Ask me later
    Lake Forest College > Create an Account
    Create an Account
*** Keywords ***
IC1 Next > IC2
    Wait Until Element Is Visible                ${Skip}
    CLick Element                                ${Next}
    Wait Until Element Is Visible                ${Next}
IC1 Next > IC2 Skip > IC3
    Wait Until Element Is Visible                ${Skip}
    CLick Element                                ${Next}
    Wait Until Element Is Visible                ${Skip}
    CLick Element                                ${Skip}
IC1 Skip > IC3
    Wait Until Element Is Visible                ${Next}
    CLick Element                                ${Skip}
IC1 Next > IC2 Next > IC3
    Wait Until Element Is Visible                ${Skip}
    CLick Element                                ${Next}
    Wait Until Element Is Visible                ${Skip}
    CLick Element                                ${Next}
    CLick Element                                ${get_Started}
Lake Forest College > Ask me later
    Sleep                                         5s
    Click Element                                 ${Find_your_school}
    Input Text Into Current Element               ${Enter_Text}
    Hide Keyboard
    Click Element                                 ${Lake_Forest}
    Sleep                                         2s
    Click Element                                 ${Continue_button}
    Click Element                                 ${Atleast6months}
    Click Element                                 ${Continue_button}
    Click Element At Coordinates                  ${TC_CheckBox_X}  ${TC_CheckBox_Y}
    Click Element                                 ${AskMeLater}
    Sleep                                         5s
    Click Element                                 ${EnrolledFull_time}
    Click Element At Coordinates                  ${Skip_x}     1819
    Sleep                                         2s
    Click Element At Coordinates                  ${Skip_x}     1868
Lake Forest College > Create an Account
    Sleep                                         5s
    Click Element                                 ${Find_your_school}
    Input Text Into Current Element               ${Enter_Text}
    Hide Keyboard
    Click Element                                 ${Lake_Forest}
    Sleep                                         2s
    Click Element                                 ${Continue_button}
    Click Element                                 ${Atleast6months}
    Click Element                                 ${Continue_button}
    Click Element At Coordinates                  ${TC_CheckBox_X}  ${TC_CheckBox_Y}
    Click Element                                 ${CreateYourAccount}
    Click Text                                    ${Email_Field}
    Input Text Into Current Element               ${Input_Email}
    Click Text                                    ${Password}
    Input Text Into Current Element               ${Input_Password}
    Click Text                                    ${ConfirmPassword}
    Input Text Into Current Element               ${Input_Password}
    Click Element                                 ${LetsGo}
Create an Account
    Click Element                                 ${CreateYourAccount}
    Click Text                                    ${Email_Field}
    Input Text Into Current Element               ${Input_Email}
    Click Text                                    ${Password}
    Input Text Into Current Element               ${Input_Password}
    Click Text                                    ${ConfirmPassword}
    Input Text Into Current Element               ${Input_Password}
    Click Element                                 ${LetsGo}

