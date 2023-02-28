import json
import os

""" Url configuration Details"""

Deeplink_url = "https://social.vision-project.co/?studyID=d2563e38-04e4-4c06-8323-f8c4722040b0&userID=Jai"
Browser = "chrome"
remote_url = "http://localhost:4723/wd/hub"
url = Deeplink_url

""" File path configuration Details """

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
jsonFilePath = os.path.join(ROOT_DIR, '\Com.visionProject.Android\Com.visionProject.Android\VisionProject.Config'
                                      '.Files\deviceDetails.json')

""" Select device : device name should be match as per deviceDetails.json file"""

deviceName = "Pixel_Emulator"
Emualator_Name = "Pixel_3a_API_30"

""" value device type = "real" or "virtual" """

device_Type = "virtual"

""" below code is reading json file & setting device configuration as per device specification"""

with open(jsonFilePath, mode='r') as jsonObject:
    data = json.load(jsonObject)

device = {

    "platformName": data[deviceName]['platformName'],
    "platformVersion": data[deviceName]['platformVersion'],
    "deviceName": data[deviceName]['deviceName'],
    "automationName": data[deviceName]['automationName'],
    "appPackage": data[deviceName]['appPackage'],
    "appActivity": data[deviceName]['appActivity'],
    "chromedriverExecutableDir": data[deviceName]['chromedriverExecutableDir']

}


