import urllib.request
import urllib.parse
import datetime

reqdata = {}
while True:
    isbn = input()
    isbn = int(isbn)
    reqdata['isbn'] = isbn
    reqdata['read_date'] = datetime.datetime.today()
    reqdata['user_id'] = 3
    params = urllib.parse.urlencode(reqdata)
    urllib.request.urlopen('http://127.0.0.1:3000/update?' + params)

'''
すぎちゃんにロベール読ませる会
isbn=9784839926052
reqdata['isbn'] = isbn
reqdata['read_date'] = datetime.datetime.today()
reqdata['user_id'] = 3
params = urllib.parse.urlencode(reqdata)
#get
urllib.request.urlopen('http://127.0.0.1:3000/update?' + params)

http://127.0.0.1:3000/update?isbn=9784839926052&read_date=2015-12-12&user_id=3
'''