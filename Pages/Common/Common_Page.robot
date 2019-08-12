*** Settings ***
Library     Collections
Resource    Common_Actions.robot
Resource    ../Main/Main_Page_Page.robot

*** Keywords ***
User Navigate To Beginner > Topic > "${path_1}" > "${path_2}"
    User Open Beginner Page
    Navigate To Beginner > Topic > "${path_1}" > "${path_2}"

User Navigate To Advanced > Topic > "${path}"
    User Open Advanced Page
    Navigate To Advanced > Topic > "${path}"

User Navigate To Beginner > General Test > "${path}"
    User Open Beginner Page
    Navigate To Beginner > General Test > "${path}"

User Navigate To Advanced > General Test > "${path}"
    User Open Advanced Page
    Navigate To Advanced > General Test > "${path}"

User Exit Current Test Page
    Exit Current Test Page

User Answers Topic Questions
	[Arguments]  ${values}
	:FOR  ${key}   IN  @{values}
	\  ${value} =  Get From Dictionary  ${values}  ${key}
	\  Click On Answer "${value}"
	\  Run Keyword If  '${key}' != 'END'
	...  Click On Next Button
	...  ELSE
	...  Click On Check Result Button

User Click On Retake Button
    Click Retake Button

User Click On Check Your Answers Button
    Click Check Your Answers Button

User Should See The Result Page
    Result Page Should Be Displayed