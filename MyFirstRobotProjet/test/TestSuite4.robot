*** Settings ***
Library    SeleniumLibrary    


Suite Setup       Log    je suis a l'interior de TestSuite Setup   
Suite Teardown    Log    je suis a l'interior de TestSuite Teardown  
Test Setup        Log    je suis a l'interior de Test Setup    
Test Teardown     Log    je suis a l'interior de Test Teardown 


Default Tags     sanity   

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...    #comment
   
MySecondtTest
    Log    inside second test   
    Set Tags    regresion1
    
MyThrirdTest
    Log    inside third test   
    Set Tags    regresion1
    Remove Tags    regression1
    
MyFourthTest
    Log    inside fourth test   
   
   
                                