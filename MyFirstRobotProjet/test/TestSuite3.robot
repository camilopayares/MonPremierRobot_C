*** Settings ***
Library    SeleniumLibrary    


Suite Setup       Log    je suis a l'interior de TestSuite Setup   
Suite Teardown    Log    je suis a l'interior de TestSuite Teardown  
Test Setup        Log    je suis a l'interior de Test Setup    
Test Teardown     Log    je suis a l'interior de Test Teardown 


Default Tags     sanity   

*** Test Cases ***
MyFirstTest
    Log    Hello World...    
   
FirstSeleniumTest
    Open Browser                     https://google.com                    chrome
    Set Browser Implicit Wait        20
    Input Text                       name=q                                Automation testing
    Press Keys                       name=q                                ENTER
    Close Browser
    Log                              Test Completed
    
SampleLoginTest
    [Documentation]                  This is a sample login test
    Open Browser                     ${URL}                                chrome
    Maximize Browser Window
    Set Browser Implicit Wait        10
    LoginKW
    Click Element                    id=welcome
    Click Element                    link=Logout
    Log                              Test completed 
    Log                              This test was executed by %{username} on %{os}              
    
*** Variables ***
${URL}             https://opensource-demo.orangehrmlive.com/   
@{CREDENTIALS}     Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123   


*** Keywords ***
LoginKW
  Input Text      id=txtUsername    ${LOGINDATA}[username]    
  Input Text      id=txtPassword    ${LOGINDATA}[password] 
  Click Button    id=btnLogin 
           
                                