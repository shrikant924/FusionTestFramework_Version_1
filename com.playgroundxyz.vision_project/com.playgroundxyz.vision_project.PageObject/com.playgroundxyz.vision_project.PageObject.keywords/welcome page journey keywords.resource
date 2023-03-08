*** Settings ***
Resource        pageObjects.resource

*** Keywords ***

Tap on 'help icon'
    mobile.Start Activity    com.playgroundxyz.vision_project    .MainActivity
    mobile.Wait Until Element Is Visible    ${Help icon}
    mobile.Click Element    ${Help icon}
    
Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    mobile.Wait Until Element Is Visible    ${Native vision app Need help?}
    mobile.Page Should Contain Element    ${Native vision Contact us}
    mobile.Page Should Contain Element    ${Native vision Eye tracking tips}
    mobile.Page Should Contain Element    ${Native vision Privacy}
    mobile.Page Should Contain Element    ${Native vision Terms of Use Agreement}
    mobile.Page Should Contain Element    ${Native vision How to check Android version}
    mobile.Page Should Contain Element    ${Native vision How to recover completion code}

verify app version should be as excepted
    ${APP_VERSION} =        mobile.Get Text    ${Native vision App version}
    Should Be Equal As Strings    ${APP_VERSION}    ${currentAppVersion}

Verify on tapping on 'Contact us' and verify user is landing on contact us page
    mobile.Wait Until Page Contains    ${Native vision Contact us}
    mobile.Click Element    ${Native vision Contact us}
    mobile.Wait Until Page Contains    Contact us
    mobile.Page Should Contain Text    	If you need help or have any questions or feedback, please send an email to the following address. We will get back to you within 1 business day.
    mobile.Page Should Contain Text    	support@vision-project.co
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Eye tracking tips' relevant page getting displayed
    mobile.Wait Until Page Contains Element    ${Native vision app Need help?}
    mobile.Wait Until Page Contains Element    ${Native vision Eye tracking tips}
    mobile.Click Element    ${Native vision Eye tracking tips}
    mobile.Page Should Contain Text    Eye tracking tips
    mobile.Page Should Contain Text    Keep your head and phone still while looking at the dots during the eye tracking setup.
    mobile.Page Should Contain Text    Sit upright at a desk or a table in a well-lit place.
    mobile.Page Should Contain Text    Avoid windows and mirrors (wearing your glasses is fine).
    mobile.Page Should Contain Text     Make sure your phone’s battery is above 50%.
    mobile.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Privacy' relevant page getting displayed
    mobile.Wait Until Element Is Visible    ${Native vision Privacy}
    mobile.Click Element    ${Native vision Privacy}
    mobile.Wait Until Element Is Visible    ${policy page Privacy policy Btn}
    mobile.Page Should Contain Text    Privacy
    mobile.Page Should Contain Text    Your data rights
    mobile.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Click Element    ${policy page Privacy policy Btn}
    mobile.Go Back
    mobile.Wait Until Element Is Visible    ${policy page Your data rights Btn}
    mobile.Click Element    ${policy page Your data rights Btn}
    Page Should Contain Text    	Your data rights
    Page Should Contain Text    	If you would like to delete your data, please send an email with the study link to the following address.
    Page Should Contain Text    privacy@playgroundxyz.com
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Wait Until Page Contains    Privacy
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Terms of Use Agreement' relevant page getting displayed
    mobile.Wait Until Page Contains Element   ${Native vision Terms of Use Agreement}
    mobile.Click Element    ${Native vision Terms of Use Agreement}
    mobile.Wait Until Page Contains    Vision Project Terms of Use
    mobile.Scroll To Element By Exact Text    19. Electronic Signatures
    mobile.Page Should Contain Text    19. Electronic Signatures
    mobile.Go Back

Verify on tapping on 'How to check Android version' relevant page getting displayed
    mobile.Wait Until Page Contains Element    ${Native vision How to check Android version}
    mobile.Click Element    ${Native vision How to check Android version}
    mobile.Page Should Contain Text    How to check Android version
    mobile.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'How to recover completion code' relevant page getting displayed
    mobile.Wait Until Page Contains Element    ${Native vision How to recover completion code}
    mobile.Click Element    ${Native vision How to recover completion code}
    mobile.Page Should Contain Text    Recover completion code
    mobile.Page Should Contain Text    Please send an email with the study link to the following address and we will get back to you with completion code.
    mobile.Page Should Contain Text    support@vision-project.co
    mobile.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Wait Until Page Contains    ${Native vision app Need help?}
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}

tap on 'BEGIN' button
    mobile.Wait Until Page Contains Element    ${BEGIN Button}
    mobile.Wait Until Element Is Visible    ${Help icon}
    mobile.Click Element    ${Help icon}
    Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    mobile.Click Element    ${Native vision Need HelpPage Go Back Btn}
    mobile.Wait Until Page Contains Element    ${BEGIN Button}
    mobile.Click Element    ${BEGIN Button}
    
read 'privacy Notice'
    mobile.Wait Until Page Contains    Privacy Notice
    mobile.Scroll To Element By Exact Text In LongView    www.playground.xyz/privacy/       30


accept 'privacy Notice'
    mobile.Wait Until Element Is Visible    ${PrivacyNoticeCheckbox}
    mobile.Wait Until Element Gets Enabled  ${PrivacyNoticeCheckbox}
    mobile.Tap    ${PrivacyNoticeCheckbox}
    mobile.Wait Until Element Is Visible         ${TermsOfUseCheckbox}
#    mobile.Tap   ${TermsOfUseCheckbox}
    mobile.Click Element At Coordinates    112     1459
    mobile.Wait Until Element Is Visible    ${acceptBtn}
    mobile.Wait Until Element Gets Enabled    ${acceptBtn}
    mobile.Click Element    ${acceptBtn}
    mobile.Wait Until Page Contains    Track your gaze

decline 'privacy Notice'
    mobile.Wait Until Element Is Visible    ${Decline}
    mobile.Click Element    ${Decline}
    mobile.Wait Until Page Contains    Study stopped