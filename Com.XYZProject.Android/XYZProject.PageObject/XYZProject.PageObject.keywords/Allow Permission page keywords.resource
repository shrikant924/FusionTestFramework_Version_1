*** Settings ***
Resource       pageObjects.resource

*** Keywords ***
Verify help icon is working as excepted
    mobile.Wait Until Element Is Visible    ${Help icon}
    mobile.Tap   ${Help icon}
    mobile.Wait Until Page Contains Element    ${Native vision app Need help?}
    mobile.Tap    ${Native vision Need HelpPage Go Back Btn}

Allow camera access
    TRY
         mobile.Wait Until Element Is Visible    ${ALLOW CAMERA ACCESS}
         mobile.Tap    ${ALLOW CAMERA ACCESS}

         TRY
               mobile.Wait Until Element Is Visible    ${Allow While using the app}
               mobile.Tap    ${Allow onlyThisTime}
               mobile.Wait Until Page Contains    Screen recording
         EXCEPT
               Log To Console     allowed camera permission
         END

    EXCEPT
        mobile.Wait Until Page Contains    You have previously allowed our app usage access.
        mobile.Tap    ${continueBtn}
        mobile.Wait Until Page Contains    Screen recording

    END

Allow Screen recording
    TRY
         mobile.Wait Until Page Contains    Ensure sensitive information such as passwords, messages or payment details are not visible when recording is on.
         mobile.Wait Until Element Is Visible    ${ALLOW ScreenRecording}
         mobile.Click Element    ${ALLOW ScreenRecording}
         mobile.Wait Until Page Contains    Start recording or casting with Vision Project?
#         mobile.Move To Element And Click    ${startNowBtn}
         mobile.Click Element At Coordinates    845    1540
         mobile.Wait Until Page Contains    You have previously allowed our app usage access.
         Verify help icon is working as excepted
         mobile.Tap    ${continueBtn}
         mobile.Wait Until Page Contains    You have previously allowed our app to appear on top.
         Verify help icon is working as excepted
         mobile.Tap    ${continueBtn}

    EXCEPT
         mobile.Wait Until Page Contains    You have previously allowed our app usage access.
         Verify help icon is working as excepted
         mobile.Tap    ${continueBtn}
         mobile.Wait Until Page Contains    You have previously allowed our app to appear on top.
         Verify help icon is working as excepted
         mobile.Tap    ${continueBtn}
    END