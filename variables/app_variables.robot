*** Variables ***
${APPIUM_SERVER}      http://localhost:4723
${PLATFORM_NAME}      Android
${DEVICE_NAME}        emulator-5554
${APP_PATH}           /Users/reynaldiramadhana/apk/mda-2.2.0-25.apk
${TIMEOUT}             20s
${AUTOMATION_NAME}    UiAutomator2

# Test Data
${STANDARD_USER}           bod@example.com
${LOCKED_USER}             alice@example.com
${VALID_PASSWORD}          10203040

# App UI Elements - Home Page
${HOME_PAGE}           id=com.saucelabs.mydemoapp.android:id/header
${APP_MENU_BUTTON}     id=com.saucelabs.mydemoapp.android:id/menuIV

# App UI Elements - Menu Navigation
${LOGIN_MENU_OPTION}   xpath=//android.widget.TextView[@text="Log In"]
${LOGOUT_MENU_OPTION}  xpath=//android.widget.TextView[@text="Log Out"]

# App UI Elements - Login Form
${USERNAME_FIELD}      id=com.saucelabs.mydemoapp.android:id/nameET
${PASSWORD_FIELD}      id=com.saucelabs.mydemoapp.android:id/passwordET
${LOGIN_BUTTON}        id=com.saucelabs.mydemoapp.android:id/loginBtn
${LOGIN_PAGE_DESC}     xpath=//android.widget.TextView[@text='Select a username and password from the list below, or click on the username to automatically populate the username and password.']

# App UI Elements - Logout Dialog
${LOGOUT_POPUP}        xpath=//android.widget.TextView[@text='Are you sure you want to logout']
${CONFIRM_LOGOUT_BTN}  id=android:id/button1
${CANCEL_LOGOUT_BTN}   id=android:id/button2

# Error Messages
${ERR_MSG_USERNAME_REQUIRED}  xpath=//android.widget.TextView[@text="Username is required"]
${ERR_MSG_PASSWORD_REQUIRED}  xpath=//android.widget.TextView[@text="Enter Password"]
${ERR_MSG_LOCKED_USER}        xpath=//android.widget.TextView[@text="Sorry this user has been locked out."]

