*** Settings ***
Resource    pageObjects.resource
Library    XML

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
    TRY
        Verify 'Accuracy needs to be improved' screen getting displayed if user fails to validate accuracy
    EXCEPT    
        Log To Console    "Accuracy is good"
    END
    
Verify 'Accuracy needs to be improved' screen getting displayed if user fails to validate accuracy
    mobile.Wait Until Element Is Visible    ${tryAgainBtn}          timeout=300
    mobile.Page Should Contain Text    Try not to let your eyes wander during the accuracy check.
    mobile.Page Should Contain Text    Accuracy needs to be improved
    Verify help icon is working as excepted
    mobile.Wait Until Element Is Visible    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    mobile.Click Element    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Wait Until Element Is Visible    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    mobile.Swipe By Percent    80    50    20    50
    mobile.Wait Until Page Contains    	Sit upright at a
    mobile.Page Should Contain Text    Sit upright at a desk or a table in a well-lit place.
    mobile.Swipe By Percent    80    50    20    50
    mobile.Wait Until Page Contains    Avoid windows and mirrors
    mobile.Page Should Contain Text    Avoid windows and mirrors (wearing your glasses is fine).
    mobile.Swipe By Percent    80    50    20    50
    mobile.Wait Until Page Contains    Keep your head
    mobile.Page Should Contain Text    Keep your head and phone still while looking at the dots.
    mobile.Click Element    ${tryAgainBtn}
    mobile.Wait Until Element Is Visible    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}
    mobile.Tap    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}

verify 'Well done! The eye tracking setup is complete' screen getting displayed after validation of EYE gaze
    mobile.Wait Until Page Contains    Well done
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
    
Verify study instructions and tap on 'START STUDY' button
    mobile.Wait Until Page Contains    Study instructions
    Verify help icon is working as excepted
    mobile.Page Should Contain Text    You will see a floating timer with the time remaining and the status of the recording in the top right corner of the screen.
    mobile.Swipe By Percent     80    50    20    50
    mobile.Wait Until Page Contains    When it is time 
    mobile.Page Should Contain Text    When it is time to return to the Vision Project app for an eye tracking accuracy check, the notification will pop up. Please act according to the instructions in the notification. The study will be paused until the action is taken.
    mobile.Swipe By Percent     80    50    20    50
    mobile.Wait Until Page Contains    When the browsing
    mobile.Page Should Contain Text    When the browsing session is complete you will see a notification like this. Please act according to the instructions in the notification.
    mobile.Tap    ${studyInstructions StartStudyBtn}

