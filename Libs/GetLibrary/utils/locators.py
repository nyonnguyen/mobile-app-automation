

class Locators:

    def __init__(self, locator, package):
        self.locator = package + ':id/' + locator

    def get_real_resource_id(self, locator, package):
        return "resource-id=" + self.locator

    def get_real_id(self, locator, package):
        return "id=" + self.locator

    def to_xpath(self, text=None):
        if text:
            return "xpath=//*[@" + self.locator + " and contains(@text, '" + text + "]"
        else:
            return "xpath=//*[@" + self.locator + "]"


