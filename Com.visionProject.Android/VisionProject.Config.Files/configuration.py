import os
from MobileTestLibrary.JsonFileReader import read_Json_file

""" File path configuration Details """

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
deviceDetailsjsonFilePath = os.path.join(ROOT_DIR,
                                         '\Com.visionProject.Android\Com.visionProject.Android\VisionProject.Config'
                                         '.Files\\deviceDetails.json')
testDataDetailsjsonFilePath = os.path.join(ROOT_DIR,
                                           '\Com.visionProject.Android\Com.visionProject.Android\VisionProject.Config'
                                           '.Files\\testData.json')

data = read_Json_file(deviceDetailsjsonFilePath)
testData = read_Json_file(testDataDetailsjsonFilePath)

""" Select device : device name should be match as per deviceDetails.json file"""

deviceName = testData['deviceName']
Emualator_Name = testData['Emulator_Name']

""" Url configuration Details"""

Browser = testData["Browser"]
remote_url = testData['remote_url']
url = testData['Deeplink_url']
currentAppVersion = testData['currentAppVersion']

""" value device type = "real" or "virtual" """

device_Type = testData['device_Type']

device = {

    "platformName": data[deviceName]['platformName'],
    "platformVersion": data[deviceName]['platformVersion'],
    "deviceName": data[deviceName]['deviceName'],
    "automationName": data[deviceName]['automationName'],
    "appPackage": data[deviceName]['appPackage'],
    "appActivity": data[deviceName]['appActivity'],
    "chromedriverUseSystemExecutable": data[deviceName]['chromedriverUseSystemExecutable'],
    "chromedriverExecutableDir": data[deviceName]['chromedriverExecutableDir'],
    "automationType": data[deviceName]['automationType'],
    "sessionName": data[deviceName]['sessionName'],
    "sessionDescription": data[deviceName]['sessionDescription'],
    "deviceOrientation": data[deviceName]['deviceOrientation'],
    "noReset": data[deviceName]['noReset'],
    "fullReset": data[deviceName]['fullReset'],
    "captureScreenshots": data[deviceName]['captureScreenshots'],
    "udid": data[deviceName]['udid'],

}

