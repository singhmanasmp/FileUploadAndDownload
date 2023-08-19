*** Settings ***
Documentation    This file will extract data from external csv files

Library     ../CustomLibrary/Csv.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =    read csv file     ${FilePath}
    [Return]    ${Data}


