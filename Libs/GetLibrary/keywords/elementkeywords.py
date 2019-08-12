from AppiumLibrary.keywords import _WaitingKeywords
from AppiumLibrary.keywords.keywordgroup import KeywordGroup


class ElementKeywords(KeywordGroup):

    def __init__(self):
        self.waiting_management = _WaitingKeywords()
