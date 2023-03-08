*** Settings ***
Resource        pageObjects.resource
*** Keywords ***
Read and accept set up your eye tracking tips
    mobile.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    Verify help icon is working as excepted
    mobile.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    mobile.Tap    ${LetsSetupYourEyeTrackingPage checkBox1}
    mobile.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox1}
    mobile.Tap    ${LetsSetupYourEyeTrackingPage checkBox2}
    mobile.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox2}
    mobile.Tap    ${LetsSetupYourEyeTrackingPage checkBox3}
    mobile.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox3}
    mobile.Tap    ${LetsSetupYourEyeTrackingPage checkBox4}
    mobile.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox4}
    mobile.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage SetupBtn}
    mobile.Tap    ${LetsSetupYourEyeTrackingPage SetupBtn}
    mobile.Wait Until Page Contains    Look at the dot until it goes green and disappears
