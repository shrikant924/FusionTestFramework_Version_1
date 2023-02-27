from AppiumLibrary import AppiumLibrary
from MobileTestLibrary.NativeAppsUtil import NativeAppsUtil
from MobileTestLibrary.androidUtils import androidUtils


class MobileTestLibrary(androidUtils, NativeAppsUtil, AppiumLibrary):
    def __init__(self):
        super().__init__()
        super(androidUtils, self).__init__()
        super(NativeAppsUtil, self).__init__()
        super(AppiumLibrary, self).__init__()
