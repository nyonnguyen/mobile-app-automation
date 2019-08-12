*** Variables ***

# Header Bar Locators
${HEADER_BAR_TITLE}                 id=tv_header_title
${GO_BACK_BUTTON}                   id=imv_back

# Tab Bar Locators
${TOPIC_TAB}                        xpath=//android.support.v7.app.ActionBar.Tab//*[@text='TOPIC']
${GENERAL_TEST_TAB}                 xpath=//android.support.v7.app.ActionBar.Tab//*[@text='GENERAL TEST']
${TEST_PAGE_LINK}                   xpath=//*[@resource-id='com.truatvl.englishgrammartest.dev:id/tv_topic_name' and contains(@text,'<text>')]

# Test Page Locators
${FAVORITE_BUTTON}                  id=imv_favorited
${PROGRESS}                         id=tv_progress
${TIMER}                            id=tv_timer
${QUESTION}                         id=tv_task
${ANSWER_1}                         id=ans_1
${ANSWER_2}                         id=ans_2
${ANSWER_3}                         id=ans_3
${ANSWER_4}                         id=ans_4
${ANSWER}                           xpath=//*[@resource-id='com.truatvl.englishgrammartest.dev:id/rad_groupd']/*[contains(@text,'<text>')]
${DIALOG}                           xpath=//*[@resource-id='com.truatvl.englishgrammartest.dev:id/parentPanel']
${QUIT_MESSAGE}                     ${DIALOG}//*[@resource-id='android:id/message']
${QUIT_MESSAGE_NO_BUTTON}           ${DIALOG}//*[@resource-id='android:id/button2']
${QUIT_MESSAGE_YES_BUTTON}          ${DIALOG}//*[@resource-id='android:id/button1']
${NEXT_BUTTON}                      id=imv_next
${CHECK_RESULT_BUTTON}              xpath=//*[@resource-id='com.truatvl.englishgrammartest.dev:id/btn_check_result']

# Result Page Locators
${CHECK_YOUR_ANSWERS_BUTTON}        id=tv_check_ans
${RETAKE_BUTTON}                    id=tv_retake
