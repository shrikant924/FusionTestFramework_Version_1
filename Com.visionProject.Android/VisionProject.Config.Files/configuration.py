# webPage configuration

Deeplink_url = "https://social.vision-project.co/?studyID=d2563e38-04e4-4c06-8323-f8c4722040b0&userID=Jai"
Browser = "chrome"
remote_url = "http://localhost:4723/wd/hub"
Pixel_6 = {
    "platformName": "android",
    "platformVersion": "13.0",
    "deviceName": "Pixel 6",
    "automationName": "UiAutomator2",
    # "appPackage": "com.playgroundxyz.vision_project",
    # "appActivity": ".MainActivity",
    "app" : "/app-debug-multimodel.apk",
    "chromedriverExecutableDir": "drivers/chromedriver.exe"

}

Pixel_Emulator = {
    "platformName": "android",
    "platformVersion": "11.0",
    "deviceName": "emulator-5554",
    "automationName": "UiAutomator2",
    "appPackage": "com.playgroundxyz.vision_project",
    "appActivity": ".MainActivity",
     "chromedriverExecutableDir": "drivers/chromedriver.exe"

}

device = Pixel_Emulator
# Mobile app configuration
