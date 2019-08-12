*** Settings ***
Library           GetLibrary
Resource          Main_Page_Variables.robot

*** Keywords ***
# Veriify Main Page
Main Page Content Should Be Appeared
	Wait Until Element Is Visible  ${MAIN_PAGE_MENU_BUTTON}

Main Page Title Should Be "${title}"
	Wait Until Element Is Visible  ${MAIN_PAGE_TITLE}
	Element Text Should Be   ${MAIN_PAGE_TITLE}  ${title}

Wait Until Home Page Is Loaded
	Wait Until Element Is Visible   ${MAIN_PAGE_MENU_BUTTON}
	Wait Until Element Is Visible   ${BEGINNER_BUTTON}
	Wait Until Element Is Visible   ${ADVANCED_BUTTON}
	Wait Until Element Is Visible   ${MY_FAVORITES_BUTTON}
	Wait Until Element Is Visible   ${LEARN_ENGLISH_SPEAKNING_BUTTON}

# Actions

Click On Beginner Button
	Click Element  ${BEGINNER_BUTTON}

Click On Advanced Button
	Click Element  ${ADVANCED_BUTTON}

Click On My Favorites Button
	Click Element  ${MY_FAVORITES_BUTTON}

Click On Learn English Speaking Button
	Click Element  ${LEARN_ENGLISH_SPEAKNING_BUTTON}
