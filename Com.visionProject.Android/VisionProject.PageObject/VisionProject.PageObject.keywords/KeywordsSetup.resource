*** Settings ***
Library         ../../../../com.visionProject.android/src/MobileTestLibrary/
Library         ../../../../com.visionProject.android/src/WebApplicationTestLibrary/
Library         ../../../../com.visionProject.android/src/APITestLibrary/
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource
Resource        ../VisionProject.PageObject.keywords/launch_flow_keywords.resource
Resource        ../VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject.keywords/Setup keywords.resource
Resource        ../VisionProject.PageObject.keywords/welcome page journey keywords.resource