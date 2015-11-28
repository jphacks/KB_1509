#coding:utf-8
__author__ = 'atsu'

import json
import urllib
import urllib2
import datetime

print('start')

#serverURL = 'http://192.168.128.46:8888/'
serverURL = 'http://localhost/post-test/'

id = 0



while True:
    id += 1
    inputISBN = raw_input() # 標準入力待ち

    # date値生成
    now = datetime.datetime.now()
    date = now.strftime("%Y-%m-%d_%H:%M:%S")


    # POST送信
    postData = {
        'date' : date,
        'user_id' : 1192,
        'book_isbn' : inputISBN
    }
    params = urllib.urlencode(postData)   # パーセントエンコード
    print('encoded')
    res = urllib.urlopen(serverURL, params).read()   # POST送信
    print(res)  #
    print('end')

#    dic={"id":id, "date":"2015-11-24", "time":"2:05", "ISBN":inputISBN}

    #JSONファイル書き込み
#    with open('hist.json', 'a') as f:
#        json.dump(dic, f, sort_keys=True, indent=4)

