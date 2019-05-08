
*** Settings ***
Library            ExtendedSelenium2Library
Library            OperatingSystem
Library            Collections

Documentation     Checking Sevral Login Scenario

Test Setup  Open Browser     https://runpayroll.adp.com/    chrome
Test Teardown    Close Browser

*** Variables ***
*** Test Cases ***
# Testcase name define as per scope
Checking Empty Username Error
     [documentation]  Going to ADP Login page and there checking title with username validation error

     # Maximize the open browser winsow
     Set Window Size    1920    1080

     # checking ADP website tile
     Title Should Be    ADP RUN

     # Enter empty userid
     Input Text       //*[@id="txtLoginId"]    ${EMPTY}

     # click on submite
     Click Element      //*[@id="btnNext"]
     Sleep   3s

     page should contain       Something isn't quite right

Doing Login by inputing valide username and password
     [documentation]  Going to ADP Login page and doing successfull login
     # Maximize the open browser winsow
     Set Window Size    1920    1080

     # checking ADP website tile
     Title Should Be    ADP RUN
     sleep    3s

     # Enter empty userid
     Input Text       //*[@id="txtLoginId"]    Wavetest004

     # click on submite
     Click Element      //*[@id="btnNext"]

     # I think somthing on the login page is not working properly The Same behaviour i saw in Selenium with C# and in the Robot also saw samething

















 

