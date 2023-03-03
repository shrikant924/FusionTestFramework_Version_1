from MobileTestLibrary.ExtendedAppiumLibrary import ExtendedAppiumLibrary
from MobileTestLibrary.NativeAppsUtil import NativeAppsUtil
from MobileTestLibrary.androidUtils import androidUtils


class MobileTestLibrary(androidUtils, NativeAppsUtil, ExtendedAppiumLibrary):
    def __init__(self):
        super().__init__()
        super(androidUtils, self).__init__()
        super(NativeAppsUtil, self).__init__()
        super(ExtendedAppiumLibrary, self).__init__()
