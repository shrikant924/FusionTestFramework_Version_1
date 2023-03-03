*** Variables ***

# AIP Locators
${QR_Code}      //*[@viewBox='0 0 256 256']
${camera_smartchip_text}        com.google.android.GoogleCamera:id/smarts_chip_text
${google_playstore_Button}      //android.widget.Button[@index=3]
${Open Study In app}        //android.view.View[@content-desc="OPEN STUDY IN APP"]/android.widget.Button
${Need_Help}        //android.view.View[@content-desc="Need Help"]/android.widget.TextView


#Vision Need Help page locators
${contact us}       //android.view.View[@content-desc="Contact us"]/android.widget.TextView
${How to check Android version}     	//android.view.View[@content-desc="How to check Android version"]/android.widget.TextView
${Privacy policy}       //android.view.View[@content-desc="Privacy policy"]/android.widget.TextView
${Terms of Use Agreement}      //android.view.View[@content-desc="Terms of Use Agreement"]//android.widget.TextView
${Go Back Button}       //android.widget.Button[@text='Go Back']

#privacy page locators
${accept cookies}      onetrust-accept-btn-handler
${Read Privacy Policy Btn}      //android.view.View[@content-desc="Read Privacy Policy"]/android.widget.TextView
${Read Privacy Policy for California Residents Btn}     //android.view.View[@content-desc="Read Privacy Policy for California Residents"]/android.widget.TextView

#welcome page
${Study link textbox}       com.playgroundxyz.vision_project:id/studyLink
