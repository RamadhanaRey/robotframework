*** Settings ***
Library    AppiumLibrary
Resource   ../variables/app_variables.robot

*** Keywords ***
Open App
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_PATH}
    ...    automationName=UiAutomator2

Close App
    Close Application

User is on home page 
    Wait Until Element Is Visible    ${HOME_PAGE}

User click app menu   
    Wait Until Element Is Visible    ${APP_MENU_BUTTON} 
    Click Element    ${APP_MENU_BUTTON}

User click login menu   
    Wait Until Element Is Visible    ${LOGIN_MENU_OPTION}
    Click Element                    ${LOGIN_MENU_OPTION}  

User login with credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text                       ${USERNAME_FIELD}    ${username}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Text                       ${PASSWORD_FIELD}    ${password}
    Click Element                    ${LOGIN_BUTTON}

User validate successful login
    Wait Until Element Is Visible    ${APP_MENU_BUTTON}
    Click Element                    ${APP_MENU_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_MENU_OPTION}

User logout from app
    Click Element                    ${LOGOUT_MENU_OPTION}
    Wait Until Element Is Visible    ${LOGOUT_POPUP}
    Wait Until Element Is Visible    ${CONFIRM_LOGOUT_BTN}
    Click Element                    ${CONFIRM_LOGOUT_BTN}

User validate successful logout
    Wait Until Element Is Visible    ${LOGIN_PAGE_DESC}

User validate error message username is required
    Wait Until Element Is Visible    ${ERR_MSG_USERNAME_REQUIRED}

User validate error message password is required
    Wait Until Element Is Visible    ${ERR_MSG_PASSWORD_REQUIRED}   

User validate unsuccessful login with locked user
    Wait Until Element Is Visible    ${ERR_MSG_LOCKED_USER}   

User click login button
    Click Element                    ${LOGIN_BUTTON}

User enter username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text                       ${USERNAME_FIELD}    ${username}

Clear Username Field     
    Click Element    ${USERNAME_FIELD}
    Clear Text       ${USERNAME_FIELD}


