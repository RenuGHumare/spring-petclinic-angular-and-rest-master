*** Settings ***
Documentation                               Infotiv Petclinic Test Functionality
Resource                                    ../Resources/PetclinicKeywords.robot
Library                                     SeleniumLibrary
Test Setup                                  Begin WebTest
Test Teardown                               End Web Test

*** Variables ***
${BROWSER}                                  chrome
${URL}                                      http://localhost:4200/
${Welcome_Message}                          Welcome to Petclinic
${Expected_Specialties_Page}                Specialties
${New_Specialty_Name}                       Opthalmology
${Existing_Specialty_Name}                  Get Value     xpath://*[@id="0"]

*** Test Cases ***
Test Remove A Specialty
    [Documentation]                    Removing A Specialty
    [Tags]                             Remove Specialty
    Given User Is On The Specialties Page
    When User Has Removed A Specialty
    Then User Should Be Able To See Specialty in the list
*** Test Cases ***
Test To Add And Remove A Specialty
    [Documentation]                    Add and Removing A Specialty
    [Tags]                             Remove Specialty
    Given User Is On The Specialties Page
    When User Removes A Newly Added Specialty
    Then User Should Be Able To See Newly Added Specialty Has Been Removed

