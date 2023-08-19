from pymongo import MongoClient

def query_search():
    client = MongoClient('mongodb://localhost:27017/')
    db = client.file_upload
    collection = db.files
    query = {'title': 'File1'}
    record = collection.find_one(query)
    if record:
        print("Record found:")
        return record
    else:
        print("Record not found")
query_search()


def delete_query():
    client = MongoClient('mongodb://localhost:27017/')
    db = client.file_upload
    collection = db.files
    query = {'title': 'File1'}
    record = collection.delete_one(query)
    if record.deleted_count > 0:
        print("Record is deleted")
        return record
    else:
        print("Record not found")
delete_query()


def delete_all_query():
    client = MongoClient('mongodb://localhost:27017/')
    db = client.file_upload
    collection = db.files
    collection.delete_many({})
    print("All Records are deleted")
delete_all_query()
