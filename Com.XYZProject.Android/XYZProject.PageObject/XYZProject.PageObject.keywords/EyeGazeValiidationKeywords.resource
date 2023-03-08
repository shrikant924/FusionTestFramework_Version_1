*** Settings ***
Resource    pageObjects.resource

*** Keywords ***
Need to Manual Input here 'Look at the dot until it goes green and disappears'
    mobile.Wait Until Page Contains    ${EyeGazeValiidation titleText}
    mobile.Wait Until Page Contains Element    ${EyeGazeValiidation BeginBtn}    timeout=300
    mobile.Page Should Contain Text     	Repeat five times. The dots will appear in random places.
    mobile.Tap    ${EyeGazeValiidation BeginBtn}
    mobile.Wait Until Page Contains    Just a few more to go        timeout=300
    mobile.Page Should Contain Text    Great job so far! Keep going. The dots will go green and disappear once the accuracy is validated.
    mobile.Wait Until Element Is Visible    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}
    mobile.Tap    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}

verify 'Well done! The eye tracking setup is complete' screen getting displayed after validation of EYE gaze
    mobile.Wait Until Page Contains    Well done! The eye tracking setup is complete
    Verify help icon is working as excepted
    mobile.Page Should Contain Text    You will have accuracy checks every 1 minutes during your browsing session to maintain the accuracy of our eye tracking.
    mobile.Tap    ${BEGIN Button}
     
Verify 'You are ready to begin the study' screen getting displayed
    mobile.Wait Until Page Contains    	You are ready to begin the study        timeout=300
    mobile.Page Should Contain Text    Your mission is to browse the content of the Facebook app on your phone until 5 minutes elapse.
    mobile.Page Should Contain Text    Browse the FEED, REELS or STORIES content in portrait mode only
    mobile.Page Should Contain Text    Please keep the Vision Project app open in the background while you browse.
    mobile.Page Should Contain Text    The Vision Project app will record your screen while you browse.
    Verify help icon is working as excepted

Tap on 'View A Quick Demo' Button
    mobile.Wait Until Element Is Visible    ${ViewAQuickDemoBtn}
    mobile.Tap    ${ViewAQuickDemoBtn}

Tap on 'Skip And Start Study' Button
    mobile.Wait Until Element Is Visible    ${Skip&StartTheStudyBtn}
    mobile.Tap    ${Skip&StartTheStudyBtn}