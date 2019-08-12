*** Settings ***
Library           GetLibrary
Resource          Main_Page_Actions.robot

*** Keywords ***

User Should See The Content Of Home Page
	Wait Until Home Page Is Loaded

User Open Beginner Page
	Click On Beginner Button

User Open Advanced Page
	Click On Advanced Button

User Open My Favorites Page
	Click On My Favorites Button

User Open Learn English Speaking Page
	Click On Learn English Speaking Button