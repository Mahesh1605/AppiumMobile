*** Settings ***
Documentation   To Open MyCoach Application
Library         AppiumLibrary
Library         Collections
*** Variables ***
${Appium_server}        http://127.0.0.1:4723/wd/hub
${platform}             13
${Device_name}          Pixel 4a
${UDID}                 18221JEC201315
${appActivity}          prototype.gradguru.org.gradguruprototype.MainActivity
${appPackge}            com.expansionbridge.gradguru
${automationName}       Appium

#Introduction_carousel
${Skip}                 //android.view.View[@content-desc="SKIP"]
${Next}                 //android.view.View[@content-desc="NEXT"]
${get_StartedX}          530       #X:530
${get_StartedY}          2070     #Y:2070

#Welcome Page
${Find_your_school}             //android.widget.EditText[@resource-id=""]
${Enter_Text}                   Lake
${Lake_Forest}                  //android.view.View[@content-desc="Lake Forest College"]
${Continue_button}              //android.view.View[@content-desc="continue"]
#Level Selection
${Enrolling}                    //android.view.View[@content-desc="I'm thinking about enrolling"]
${Past6months}                  //android.view.View[@content-desc="I've enrolled in the past 6 months"]
${Atleast6months}               //android.view.View[@content-desc="I have been enrolled for at least 6 months"]

#Final Page
${TC_CheckBox_X}                  70
${TC_CheckBox_Y}                  1810
${CreateYourAccount}              //android.view.View[@content-desc="create your account"]
${AskMeLater}                     //android.view.View[@content-desc="ask me later"]
#One Last Thing 1
${Between18-24}                   //android.view.View[@content-desc="Between 18-24 years old"]
${Work20+}                        //android.view.View[@content-desc="I work 20+ hours per week"]
${EnrolledFull_time}              //android.view.View[@content-desc="Enrolled full-time"]
${Parent}                         //android.view.View[@content-desc="Enrolled full-time"]
${Military_Veteran}               //android.view.View[@content-desc="Military Veteran"]
#One Last Thing 2
${Associate_Degree}               //android.view.View[@content-desc="I want an Associate degree"]
${TransferToA_4Year}              //android.view.View[@content-desc="I want to transfer to a 4 year"]
${EarnACertificate}               //android.view.View[@content-desc="I want to earn a Certificate"]
${BrushUp}                        //android.view.View[@content-desc="I want to brush up on skills"]
${FamilyProud}                    //android.view.View[@content-desc="I want to make my family proud"]
${MakeMOreMOney}                  //android.view.View[@content-desc="I want to make more money"]

${Continue}                       //android.view.View[@content-desc="continue"]
${Continue_X}                     530
${Continue_Y}                     1745
${Skip}                           //android.view.View[@content-desc="skip"]
${Skip_x}                         538
${Skip_Y}                         1868

#Create account
${Email_Field}                    email address
${Password}                       password (at least 8 characters)
${ConfirmPassword}                confirm password
${LetsGo}                         //android.view.View[@content-desc="let's go!"]
${Input_Email}                    zenqtestuser2beyond12+8@gmail.com
${Input_Password}                 SamplePassword
${VerifyAccount}                  //android.widget.EditText[@resource-id=""]
${ResendCode}                     //android.view.View[@content-desc="resend code"]
#Login
${Login}                          538       2130
${NeedToCreateYourAccount}        //android.view.View[@content-desc="need to create an account?"]

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
