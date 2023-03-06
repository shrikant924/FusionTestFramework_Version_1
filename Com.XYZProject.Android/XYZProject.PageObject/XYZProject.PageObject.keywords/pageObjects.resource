*** Settings ***
Library         ../../../../FusionTestFramework/src/MobileTestLibrary/
Library         ../../../../FusionTestFramework/src/WebApplicationTestLibrary/
Variables      ../../XYZProject.Config.Files/configuration.py
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.locators/Locators.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/LetsSetupYourEyeTrackingKeywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/Allow Permission page keywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/LetsSetupYourEyeTrackingKeywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/welcome page journey keywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/launch_flow_keywords.resource
Resource       ../../XYZProject.PageObject/XYZProject.PageObject.keywords/Setup keywords.resource