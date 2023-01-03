*** Settings ***
Documentation   To Open MyCoach Application
Library         AppiumLibrary
Library         Collections
*** Variables ***
${Appium_server}        http://127.0.0.1:4723/wd/hub
${platform}             13
${Device_name}          Pixel 4a
${UDID}                 18221JEC201315
${appActivity}          com.google.android.apps.nexuslauncher.NexusLauncherActivity
${appPackge}            com.google.android.apps.nexuslauncher
${automationName}       Appium
*** Test Cases ***
Just to Open application
    Open The MyCoach application
    Open Outlook application

*** Keywords ***
Open The MyCoach application
    ${androiddriver}=   Open Application    ${Appium_server}
    ...           platformName=android
    ...           platformVersion=${platform}
    ...           deviceName=${Device_name}
    ...           automationName=${automationName}
    ...           appPackage=${appPackge}
    ...           newCommandTimeout=2500
    ...           appActivity=${appActivity}
Open Outlook application
    Click Element       //android.widget.TextView[@content-desc="App Tester"]
