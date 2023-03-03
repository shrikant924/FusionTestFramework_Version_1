from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class NativeAppsUtil:

    @property
    def appium_library_instance(self):
        return BuiltIn().get_library_instance("AppiumLibrary")

    # @keyword
    # def open_camera_app(self):
    #     self.start_activity('com.google.android.GoogleCamera', 'com.android.camera.CameraLauncher')

    @keyword
    def press_enter_key(self):
        self.appium_library_instance.press_keycode(66)
