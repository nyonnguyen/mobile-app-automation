from AppiumLibrary.locators import ElementFinder
from ..utils import Locators


def get_list_xpath_by(self, labels, sep, parent):
    xpath = []
    for i, label in enumerate(labels.split(sep)[0:]):
        locator = Locators(parent)
        xpath_locator = locator.to_xpath(label)
        xpath.append(xpath_locator)
    return xpath


class ExtendedElementFinder(ElementFinder):

    def __init__(self):
        ElementFinder.__init__(self)
        strategies = {
            'android': self._find_by_android,
            'ios': self._find_by_ios,
        }
        self._strategies.update(strategies)

    def navigate_to_test_page(self, paths, sep='>'):
        list_xpath = get_list_xpath_by(paths, sep, "tv_topic_name")
        self._touch_menu(list_xpath)

    def _touch_menu(self, element_xpath):
        for xpath in range(len(element_xpath)):
            self._find_by_xpath(element_xpath[xpath], True, True).click()
