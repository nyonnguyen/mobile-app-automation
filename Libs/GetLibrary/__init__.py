from AppiumLibrary import AppiumLibrary
from .keywords import *

__version__ = '1.0.0'


class GetLibrary(AppiumLibrary, ElementKeywords):

    def __init__(self):
        AppiumLibrary.__init__(self, 30)
        ElementKeywords.__init__(self)
        self._element_finder = ExtendedElementFinder()

        ####################################################################################
        # Make sure pydevd installed: pip install pydevd
        # AND Uncomment following codes to enable debug mode
        # sys.path.append("pycharm-debug-py3k.egg")
        # import pydevd
        # pydevd.settrace('localhost', port=12345, stdoutToServer=True, stderrToServer=True)
        ####################################################################################
