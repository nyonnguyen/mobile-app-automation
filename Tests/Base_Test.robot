*** Settings ***
Documentation    This is the base file for test, includes all basic functions/keywords for a single test file.

Library   GetLibrary
Resource  ../Pages/Common/Common_Page.robot
Variables  Data/settings.yaml

*** Keywords ***

User Open Application
	Open Application  ${REMOTE_URL}
	...  platformName=${DESIRE_CAPABILITIES.platformName}
	...  appium:deviceName=${DESIRE_CAPABILITIES.deviceName}
	...  appium:platformVersion=${DESIRE_CAPABILITIES.platformVersion}
	...  app=${CURDIR}${/}${DESIRE_CAPABILITIES.app}
	...  appActivity=${DESIRE_CAPABILITIES.appActivity}
	...  automationName=${DESIRE_CAPABILITIES.automationName}


User Prepare The Test Environment
  User Open Application
  User Should See The Content Of Home Page

User Cleanup The Test Environment
  Close Application

User Cleanup Test Case
  Capture Page Screenshot
  Reset Application