#coding:utf-8
__author__ = 'atsu'

import json
import urllib
import urllib2
import datetime

print('start')

#serverURL = 'http://192.168.128.46:8888/'
serverURL = 'http://localhost/post-test/'









def scan(): #jsonで保存
    inputISBN = raw_input() # レジスキャナ標準入力待ち

    # date値生成
    now = datetime.datetime.now()
    date = now.strftime("%Y-%m-%d_%H:%M:%S")

    # JSONファイル書き込み
    # JSON読み込み
#    with open('record.json', 'r') as f:
#        record = json.load(f)

#    f = open('record.json', 'r')
#    record = json.load(f)
#    print type(record)

    record = []
    dic={"date":date, "book_isbn":inputISBN}    # 追加辞書オブジェクト
    record.append(dic)   # 配列に追加

    # JSON書き込み
    with open('record.json', 'w') as f:
        json.dump(record, f, sort_keys=True, indent=2)

#    f = open('record.json', 'w')
#    f.write(record)
#    f.close()


 #   with open('record.json', 'a') as f:
 #       json.dump(dic, f, sort_keys=True, indent=4)

def send(): # POST送信


#    f = open('record.json', 'r')
#    record = f.read()
#    f.close()

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


while True:
    scan()
#    send()

