*** Settings ***
Library    AppiumLibrary
Library    MobileTestLibrary
Resource    ../../VisionProject.PageObject/VisionProject.PageObject.keywords/TC001.resource
Variables       ../../VisionProject.Config.Files/configuration.py

*** Keywords ***
launch chrome app
    MobileTestLibrary.Start Appium Service
    Open Application        ${remote_url}       &{Pixel_6_chrome}
#    Start Activity    com.android.chrome    org.chromium.chrome.browser.ChromeTabbedActivity
