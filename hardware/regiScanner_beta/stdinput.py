#coding:utf-8
__author__ = 'atsu'

import json
import urllib
import datetime
import os

#serverURL = 'http://192.168.128.46:8888/'
#serverURL = 'http://localhost/post-test/'
serverURL = 'https://thawing-harbor-3873.herokuapp.com/update'

user_id = 3

print('deamon(?) start')


def scan(): #jsonで保存
    inputISBN = raw_input() # レジスキャナ標準入力待ち

    # date値生成
    now = datetime.datetime.now()
    date = now.strftime("%Y-%m-%d_%H:%M:%S")

    # JSONファイル書き込み
    # JSON読み込み
    if os.path.exists('record.json') :  #  ファイルが存在
        with open('record.json', 'r') as f:
            record = json.load(f)
    else :  #存在しない
        record = []

    dic={"date":date, "book_isbn":inputISBN}    # 追加辞書オブジェクト
    record.append(dic)   # 配列に追加

    # JSON書き込み
    with open('record.json', 'w') as f:
        json.dump(record, f, sort_keys=True, indent=2)

    print('ISBN stored')


def send(): # POST送信
    # JSON読み込み
    if os.path.exists('record.json') :  #  ファイルが存在
        with open('record.json', 'r') as f:
            record = json.load(f)
    else :  #存在しない
        record = []

    dic = record.pop(0)

    postData = {
        'date' : dic['date'],
        'user_id' : user_id,
        'book_isbn' : dic['book_isbn']
    }
    params = urllib.urlencode(postData)   # パーセントエンコード
    res = urllib.urlopen(serverURL, + params).read()   # POST送信
    print(res)  #

    # JSON書き込み
    with open('record.json', 'w') as f:
        json.dump(record, f, sort_keys=True, indent=2)

    if len(record) == 0 :    # レコードに配列が存在しない
        print('All data was sended')
        return(0)

while True:
    scan()
    send()