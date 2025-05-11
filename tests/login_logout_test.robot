*** Settings ***
Documentation    Test login and logout on Sauce Demo Android app
Resource         ../resources/login_keywords.robot
Suite Setup      Open App
Suite Teardown   Close App
Default Tags     disabled
Force Tags       regression

*** Test Cases ***
TC001 - Verify Successful Login with Valid Credentials
    [Tags]    smoke    positive    P0
    User is on home page 
    User click app menu
    User click login menu
    User login with credentials     ${STANDARD_USER}     ${VALID_PASSWORD} 
    User validate successful login

TC002 - Verify Successful Logout After Login
    [Tags]    smoke    positive    P0
    User logout from app
    User validate successful logout 

TC003 - Verify Error Message When Login with Empty Username
    [Tags]    negative    P2
    User click login button
    User validate error message username is required

TC004 - Verify Error Message When Login with Empty Password
    [Tags]    negative    P2
    User enter username   ${STANDARD_USER} 
    User click login button
    User validate error message password is required

TC005 - Verify Error Message When Login with Locked User
    [Tags]    negative    P2
    Clear Username Field
    User login with credentials     ${LOCKED_USER}     ${VALID_PASSWORD} 
    User click login button
    User validate unsuccessful login with locked user
