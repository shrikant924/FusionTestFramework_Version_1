*** Settings ***
Library         AppiumLibrary
Library         WebApplicationTestLibrary
Library         MobileTestLibrary
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
launch camera app and wait until user scan the QR code from study link url
    AppiumLibrary.Start Activity    com.google.android.GoogleCamera    com.android.camera.CameraLauncher
    WebApplicationTestLibrary.Open Browser          ${url}      ${Browser}
    WebApplicationTestLibrary.Maximize Browser Window

tap on generated link
    AppiumLibrary.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300
    AppiumLibrary.Click Element     ${camera_smartchip_text}
    WebApplicationTestLibrary.Close Browser

tap on 'google play store' button
    AppiumLibrary.Wait Until Element Is Visible    ${google_playstore_Button}       timeout=30
    AppiumLibrary.Click Element         ${google_playstore_Button}

verify user is landed on 'google playstore' on vision app page
    AppiumLibrary.Wait Until Page Contains    Google Play
    AppiumLibrary.Page Should Contain Text      Vision Project
    AppiumLibrary.Go Back

Verify if Need Help? page opens up after tapping Need Help? link from landing page

    AppiumLibrary.Wait Until Page Contains    Need Help
    AppiumLibrary.Click Element    ${Need_Help}

Verify if "Contact Us", "How to check Android version" , "Privacy Policy" and "Terms of User Agreement" option are provided on Need help page
    AppiumLibrary.Wait Until Page Contains    Contact us
    AppiumLibrary.Page Should Contain Text     Contact us
    AppiumLibrary.Page Should Contain Text       How to check Android version
    AppiumLibrary.Page Should Contain Text       Privacy policy
    AppiumLibrary.Page Should Contain Text       Terms of Use Agreement

tap on 'Contact us' and verify user is landing on contact us page
    AppiumLibrary.Wait Until Element Is Visible    ${contact us}
    AppiumLibrary.Click Element    ${contact us}
    AppiumLibrary.Wait Until Page Contains    Contact us
    AppiumLibrary.Page Should Contain Text    	If you need help or have any questions or feedback, please send an email to the following address. We will get back to you within 1 business day.
    AppiumLibrary.Page Should Contain Text    	support@vision-project.co
    AppiumLibrary.Click Element    ${Go Back Button}

tap on 'How to check Android version' and verify user is landing on 'How to check Android version' page
    AppiumLibrary.Wait Until Element Is Visible    ${How to check Android version}
    AppiumLibrary.Click Element    ${How to check Android version}
    AppiumLibrary.Page Should Contain Text    How to check Android version
    AppiumLibrary.Page Should Contain Element    ${Go Back Button}
    AppiumLibrary.Click Element    ${Go Back Button}

tap on 'Privacy policy' and verify user is landing on Privacy policy page
    
    AppiumLibrary.Wait Until Element Is Visible    ${Privacy policy}
    AppiumLibrary.Click Element    ${Privacy policy}
    TRY
         Run Keyword And Continue On Failure    AppiumLibrary.Wait Until Element Is Visible    ${accept cookies}
         Run Keyword And Continue On Failure    AppiumLibrary.Click Element    ${accept cookies}
    EXCEPT
          Log To Console     cookies already accepted by the user
    END
    AppiumLibrary.Page Should Contain Text    Privacy Policy
    AppiumLibrary.Click Element    ${Read Privacy Policy Btn}
    AppiumLibrary.Wait Until Page Contains    In this Privacy Policy, 'us' 'we' or 'our' means PLAYGROUND XYZ HOLDINGS
    AppiumLibrary.Page Should Contain Text    	In this Privacy Policy, 'us' 'we' or 'our' means PLAYGROUND XYZ HOLDINGS PTY LTD (ABN 76 607 526 027) and our related bodies PLAYGROUND XYZ AUSTRALIA PTY LTD (ABN 42 607 532 365), PLAYGROUND XYZ IP PTY LTD (ABN 66 607 532 025), PLAYGROUND XYZ EMEA LTD (UK Company No. 10802474), PLAYGROUND XYZ ASIA PTE. LTD. (SG Registration No. 201809380E) and PLAYGROUND XYZ NORTH AMERICA CORP (EIN 36-4922580). We are committed to respecting your privacy.
    MobileTestLibrary.Scroll To Element By Text     Read Privacy Policy for California Residents
    AppiumLibrary.Click Element    ${Read Privacy Policy for California Residents Btn}
    AppiumLibrary.Wait Until Page Contains    	Playground XYZ Holdings Pty. Ltd., Playground XYZ Australia Pty. Ltd.        timeout=15
    AppiumLibrary.Page Should Contain Text    	Playground XYZ Holdings Pty. Ltd., Playground XYZ Australia Pty. Ltd., Playground XYZ IP Pty. Ltd., Playground XYZ EMEA Ltd., Playground XYZ Asia Pte. Ltd. and Playground XYZ North America Corp. and their affiliates (collectively,“[COMPANY],” “we,” “us,” or “our”) adopts this Privacy Statement to comply with the California Consumer Privacy Act of 2018 (“CCPA”) and other California privacy laws. This Privacy Statement applies solely to visitors, users, and others who reside in the State of California (“consumers,” “you,” or “your”).  This Privacy Statement explains our privacy practices and your rights regarding the collection, use, and disclosure of your personal information.
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back

tap on 'Terms of Use Agreement' and verify user is landing on Terms of Use Agreement page

    AppiumLibrary.Wait Until Element Is Visible    ${Terms of Use Agreement}    timeout=10
    AppiumLibrary.Click Element    ${Terms of Use Agreement}
    AppiumLibrary.Wait Until Page Contains    Vision Project Terms of Use Agreement
    MobileTestLibrary.Scroll To Element By Text    19. Electronic Signatures
    AppiumLibrary.Page Should Contain Text    19. Electronic Signatures
    AppiumLibrary.Go Back







