*** Settings ***
Library     GetLibrary
Resource    Common_Variables.robot
Library     Collections
Library     String

*** Keywords ***
# Header Bar Keywords

Header Title Should Be "${title}"
	Element Text Should Be   ${HEADER_BAR_TITLE}  ${title}

Click On Go Back Button
	Click Element  ${GO_BACK_BUTTON}

# Menu / Tab Keywords

Navigate To
    [Arguments]  ${paths}
    :FOR  ${path}  IN  @{paths}
    \

Navigate To Beginner > Topic > "${path_1}" > "${path_2}"
    #Click Element  ${TOPIC_TAB}
    Click On Element By Text  ${TEST_PAGE_LINK}  ${path_1}
    Click On Element By Text  ${TEST_PAGE_LINK}  ${path_2}
    #Sleep  10
    #Navigate To Test Page  ${path}

Navigate To Advanced > Topic > "${path}"
    Click Element  ${TOPIC_TAB}
    Navigate To Test Page  ${path}

Navigate To Beginner > General Test > "${path}"
    Click Element  ${GENERAL_TEST_TAB}
    Navigate To Test Page  ${path}

Navigate To Advanced > General Test > "${path}"
    Click Element  ${GENERAL_TEST_TAB}
    Navigate To Test Page  ${path}

# Test Page Keywords

Exit Current Test Page
    Click On Go Back Button
    Click Element  ${QUIT_MESSAGE_YES_BUTTON}

Click On Answer "${text}"
    Click On Element By Text  ${ANSWER}  ${text}

Click On Next Button
    Wait Until Page Contains Element  ${NEXT_BUTTON}  5
    Click Element  ${NEXT_BUTTON}

Click On Check Result Button
    Wait Until Page Contains Element  ${CHECK_RESULT_BUTTON}  5
    Click Element  ${CHECK_RESULT_BUTTON}

# Result Page Keywords

Click Retake Button
    Click Element  ${RETAKE_BUTTON}

Click Check Your Answers Button
    Click Element  ${CHECK_YOUR_ANSWERS_BUTTON}

Result Page Should Be Displayed
    Page Should Contain Element  ${CHECK_YOUR_ANSWERS_BUTTON}

Click On Element By Text
    [Arguments]   ${element_xpath}   ${text}=None   ${replacer}=<text>
    ${xpath} =  Replace String  ${element_xpath}  ${replacer}  ${text}
    Wait Until Page Contains Element  ${xpath}  5
    Click Element  ${xpath}
