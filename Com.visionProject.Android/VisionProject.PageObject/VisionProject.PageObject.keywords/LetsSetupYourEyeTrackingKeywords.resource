*** Settings ***
Resource        ../../VisionProject.PageObject/VisionProject.PageObject.keywords/pageObjects.resource

*** Keywords ***
Read and accept set up your eye tracking tips
    MobileTestLibrary.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    Verify help icon is working as excepted
    MobileTestLibrary.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    MobileTestLibrary.Tap    ${LetsSetupYourEyeTrackingPage checkBox1}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox1}
    MobileTestLibrary.Tap    ${LetsSetupYourEyeTrackingPage checkBox2}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox2}
    MobileTestLibrary.Tap    ${LetsSetupYourEyeTrackingPage checkBox3}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox3}
    MobileTestLibrary.Tap    ${LetsSetupYourEyeTrackingPage checkBox4}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox4}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage SetupBtn}
    MobileTestLibrary.Tap    ${LetsSetupYourEyeTrackingPage SetupBtn}
    MobileTestLibrary.Wait Until Page Contains    Look at the dot until it goes green and disappears
