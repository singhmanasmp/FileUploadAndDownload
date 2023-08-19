import csv

def  read_csv_file(fn, testcaseid):
    with open(fn) as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            if len(row) != 0 and testcaseid in row:
                return row[0], row[1], row[2]
