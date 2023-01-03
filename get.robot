*** Settings ***
Documentation   Complete Introduction carousel
Library         AppiumLibrary
Library         Collections
Library         BuiltIn
Resource        MobileResources.robot
Test Setup      Open The MyCoach application
#Test Teardown   Close Application
*** Test Cases ***
Onboarding
    IC1 Next > IC2 Next > IC3
    Create an Account
*** Keywords ***
IC1 Next > IC2 Next > IC3
    sleep                                         5s
    CLick Element                                 ${Next}
    Wait Until Element Is Visible                 ${Skip}
    CLick Element                                 ${Next}
    Click Element At Coordinates                  ${get_StartedX}    ${get_StartedY}
Create an Account
    Wait Until Page Contains Element              ${Find_your_school}
    Click Element At Coordinates                  538       2130
    Click Element                                 ${NeedToCreateYourAccount}
    Click Text                                    ${Email_Field}
    Input Text Into Current Element               ${Input_Email}
    Click Text                                    ${Password}
    Input Text Into Current Element               ${Input_Password}
    Click Text                                    ${ConfirmPassword}
    Input Text Into Current Element               ${Input_Password}
    Click Element                                 ${LetsGo}
    Sleep                                         15s
    #Click Element                                 ${VerifyAccount}
    Open Notifications
    Text Should Be Visible                        mycoachsupport
    Click Text                                    mycoachsupport
    Get Contexts

