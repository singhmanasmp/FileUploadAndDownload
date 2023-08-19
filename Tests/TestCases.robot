*** Settings ***
Documentation       This project will test the file upload and download application
Library             SeleniumLibrary     timeout=20s
Library             CSVLibrary
Library             Collections
Resource            ../Resources/Variables.py
Resource            ../Resources/Locaters.robot
Resource            ../Resources/Keywords.robot
Resource            ../Resources/mongodb.robot
Resource            ../Resources/DataManager.robot
Suite Setup         Run Keywords     Connect to MongoDB  AND  Launch Application
Suite Teardown      Close Browser


*** Test Cases ***

TC1 : Upload a file with supported format
    [Documentation]                         This test case will check upload of a valid format file
    [Tags]                                  Positive    Functional
    Upload file and hit Submit      TC1
    Verification in Files List tab
    Verification of a record in DB


TC2 : Upload a file with unsupported format
    [Documentation]                         This test case will check warning message for unsupported file type
    [Tags]                                  Negative    Functional
    Upload file and hit Submit      TC2
    Verification of Error Message


TC3 : Upload a file with blank title and a description
    [Documentation]                         This test case will check for warning message when Title field is left blank
    [Tags]                                  Negative    Functional
    Upload file and hit Submit      TC3
    Verification of Blank Field Warning Message


TC4 : Upload a file with blank description and a title
    [Documentation]                         This test case will check for warning message when Description field is left blank
    [Tags]                                  Negative    Functional
    Upload file and hit Submit      TC4
    Verification of Blank Field Warning Message


TC5 : Select a file but don't add title and description
    [Documentation]                         This test case will check for warning message when a file is selected with blank title and description
    [Tags]                                  Negative    Functional
    Upload file and hit Submit      TC5
    Verification of Blank Field Warning Message


TC6 : Upload a duplicate file                  # This is a defect, we are able to upload duplicate files
    [Documentation]                         This test case will check for a warning message on same file upload
    [Tags]                                  Negative   Functional
    Upload file and hit Submit      TC6
    Verification of Error Message


TC7 : Upload a file with alphanumeric title and description
    [Documentation]                         This test case will check upload of a valid format file
    [Tags]                                  Positive    Functional
    Upload file and hit Submit      TC7
    Verification in Files List tab
    Verification of a record in DB


TC8 : Delete a file
    [Documentation]                         This test case will check for a file deletion from UI and DB
    [Tags]                                  Positive   Functional
    Deletion of a record
    Verification of a File Deletion from UI


TC9 : Delete all files
    [Documentation]                         This test case will check for all files deletion from UI and DB
    [Tags]                                  Positive   Functional
    Deletion of All records
    Verification of All Files Deletion from UI


TC10 : Verification of image preview of a valid file
    [Documentation]                         This test case will check the image preview of a valid format file
    [Tags]                                  Positive    Functional
    Upload file and hit Submit      TC3
    Verification of Image Preview


TC11 : No preview after uploading a non image file
    [Documentation]                         This test case will check the preview message of a non image type file
    [Tags]                                  Negative    Functional
    Upload file and hit Submit      TC11
    Verification of No Preview Message