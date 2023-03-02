import os
import subprocess
import time

from appium.webdriver.appium_service import AppiumService, DEFAULT_PORT
from appium.webdriver.common.appiumby import AppiumBy
from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class androidUtils:

    @property
    def appium_library_instance(self):
        return BuiltIn().get_library_instance("AppiumLibrary")

    @keyword
    def start_appium_service(self):
        appium_service = AppiumService()
        appium_service.start(args=['--address', '127.0.0.1', '-p', str(DEFAULT_PORT), '--base-path', '/wd/hub/',
                                   ])
        assert appium_service.is_running
        assert appium_service.is_listening

    @keyword
    def stop_appium_service(self):
        appium_service = AppiumService()
        appium_service.stop()
        assert (not appium_service.is_running)
        assert (not appium_service.is_listening)

    @keyword
    def scroll_to_element(self, element):
        driver = self.appium_library_instance._current_application()
        driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                            "new UiScrollable(new UiSelector().scrollable(true).instance("
                            "0)).scrollIntoView(""new UiSelector().textContains(\"" + element +
                            "\").instance(0))")



    @keyword
    def scroll_to_element_by_text(self, element_text):
        driver = self.appium_library_instance._current_application()

        driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, "new UiScrollable(new UiSelector().scrollable(true).instance("
                                                          "0)).scrollIntoView(""new UiSelector().textContains(\"" + element_text +
                            "\").instance(0))")

    @keyword
    def start_emulator(self, emulator_name, deviceType):
        if deviceType == 'virtual':
            print('Starting emulator...')
            subprocess.Popen(['emulator', '-avd', emulator_name])
            os.system('adb wait-for-device')
            os.system('Perform whatever adb commands you need')
            print('Started emulator...')
        else:
            print("Testing started")

    @keyword
    def stop_emulator(self):

        try:
            print('closing emulator...')
            time.sleep(15.0)
            os.system('adb -s emulator-5554 emu kill')
            print('emulator closed successfully...')

        except:
            raise print("No emulator running...")
