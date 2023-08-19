*** Settings ***
Documentation       This file contains the common methods/keywords for UI operations
Library             SeleniumLibrary     timeout=20s
Library             ../CustomLibrary/Csv.py
Variables           ../Resources/Variables.py
Resource            ../Resources/Locaters.robot

*** Keywords ***
Launch application
    Open Browser                            ${URL}       ${Browser_Type}
    Wait Until Page Contains Element        ${Submit_Button}
    Maximize Browser Window


Upload file and hit Submit
    [Arguments]    ${testcaseid}
    ${file1}    ${file2}    ${file3}    read csv file    ${CSVFilePath}     ${testcaseid}
    reload page
    click element                           ${Home_Tab}
    Wait Until Page Contains Element        ${Submit_Button}
    Input Text                              ${Title_Input_Field}             ${file1}
    Input Text                              ${Description_Input_Field}       ${file2}
    Choose File                             ${Select_File}                   ${FPath}\\${file3}
    Sleep                                   2s
    Click Element                           ${Submit_Button}


Verification in Files List tab
    Sleep                                   2s
    Click Element                           ${Files_List_Tab}
    page should contain element             ${File_Name_In_Files_Tab}


Verification of Error Message
    Sleep                                   2s
    page should contain element             ${Unsupported_File_Error_Message}


Verification of Blank Field Warning Message
    Sleep                                   2s
    page should contain element             ${Blank_Field_Warning_Message}


Verification of File not Selected Warning Message
    Sleep                                   2s
    page should contain element             ${Select_File_Warning_Message}


Verification of a File Deletion from UI
    Sleep                                   2s
    reload page
    Click Element                           ${Files_List_Tab}
    page should not contain element         ${File_Name_In_Files_Tab}


Verification of All Files Deletion from UI
    Sleep                                   2s
    reload page
    Click Element                           ${Files_List_Tab}
    page should contain element             ${No_Files_Found_Message}


Verification of Image Preview
    Sleep                                   2s
    page should contain element             ${Image_Preview}


Verification of No Preview Message
    Sleep                                   2s
    page should contain element             ${No_Preview_Message}