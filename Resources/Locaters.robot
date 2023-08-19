*** Variables ***

${Submit_Button}                    xpath=//button[@type='submit']
${Title_Input_Field}                id=title
${Description_Input_Field}          id=description
${Select_File}                      xpath=//div[@class='drop-zone']/input
${Files_List_Tab}                   xpath=//a[@href='/list']
${File_Name_In_Files_Tab}           xpath=//td[contains(text(), 'File1')]
${Unsupported_File_Error_Message}   xpath=//p[contains(text(),'only upload files with jpg, jpeg, png, pdf, doc, docx, xslx, xls format.')]
${Home_Tab}                         xpath=//a[contains(text(), 'Home')]
${Blank_Field_Warning_Message}      xpath=//p[contains(text(), 'Please enter all the field values.')]
${Select_File_Warning_Message}      xpath=//p[contains(text(), 'Please select a file to add.')]
${No_Files_Found_Message}           xpath=//td[contains(text(), 'No files found. Please add some.')]
${Image_Preview}                    xpath=//img[@class='preview-image']
${No_Preview_Message}               xpath=//div[@class='preview-message']/p[contains(text(), 'No preview available for this file')]
