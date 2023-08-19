from pymongo import MongoClient

URL = 'http://localhost:3030/'
Browser_Type = 'chrome'
FPath = 'C:\\Users\\Sadhana\\PycharmProjects\\FileUploadAndDownload\\Resources\\InputFiles'
CSVFilePath = 'C:\\Users\\Sadhana\\PycharmProjects\\FileUploadAndDownload\\CustomLibrary\\TestCSVFile.csv'
UnsupportedFile = 'Unsupported file type'
UnsupportedFileDescription = 'trying to upload an unsupported file type'
DB_Name = 'file_upload'
Collection_Name = 'files'
client = MongoClient("mongodb://localhost:27017/")
db = client.DB_Name
collection = db.Collection_Name
