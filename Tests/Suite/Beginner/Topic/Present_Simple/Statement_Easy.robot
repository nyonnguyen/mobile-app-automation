*** Settings ***
Resource  ../Tests/Base_Test.robot
Variables  ../Tests/Data/Beginner/Topic/Present_Simple/Statement_Easy.yaml

Suite Setup     User Prepare The Test Environment
#Test Setup     Setup Statement Easy Test
Test Teardown   User Cleanup Test Case
Suite Teardown  User Cleanup The Test Environment

Force Tags  statement_easy


*** Test Cases ***

User Can Answer Statement Easy Test
	[Tags]  statement_easy_1
	Given User Navigate To Beginner > Topic > "PRESENT SIMPLE" > "Present simple - statement (easy)"
	When User Answers Topic Questions  ${statement_easy_1}
	Then User Should See The Result Page

User Can Retake Statement Easy Test
	[Tags]  statement_easy_2  test_done
	[Setup]  User Answrer Statement Easy Test  ${statement_easy_2.SETUP}
	Given User Click On Retake Button
	When User Answers Topic Questions  ${statement_easy_2.RETAKE}
	Then User Should See The Result Page

# User Can Check Answers On Statement Easy Test
# 	[Tags]  statement_easy_3  test_done
# 	[Setup]  User Answrer Statement Easy Test  ${statement_easy_3}
# 	Given User Click On Check Your Answers Button
# 	Then User Should See The Result Page


*** Keywords ***

User Answrer Statement Easy Test
	[Arguments]  ${answers}
	Given User Navigate To Beginner > Topic > "PRESENT SIMPLE" > "Present simple - statement (easy)"
	When User Answers Topic Questions  ${answers}
	Then User Should See The Result Page



