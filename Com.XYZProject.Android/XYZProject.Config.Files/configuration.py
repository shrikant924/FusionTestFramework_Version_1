from MobileTestLibrary.JsonFileReader import read_Json_file

""" ----------------------------File path configuration Details --------------------------------------------------"""

deviceDetails = read_Json_file('\\FusionTestFramework\\Com.XYZProject.Android\XYZProject.Config.Files\\deviceDetails'
                               '.json')
testData = read_Json_file('\\FusionTestFramework\\Com.XYZProject.Android\XYZProject.Config.Files\\testData.json')

""" --------------------------------------------------Testdata-----------------------------------------------------"""

deviceName = testData['deviceName']
Browser = testData["Browser"]
remote_url = testData['remote_url']
url = testData['Deeplink_url']
currentAppVersion = testData['currentAppVersion']
device = deviceDetails[deviceName]
